#ifndef VALUE_H
#define VALUE_H

#include<QString>

namespace scheme
{
	// Number type
	struct Number {
		bool isFixed;
		union {
			long fixed;
			double real;
		};

		long toFixed() const {
			return (this->isFixed) ? this->fixed : (long) this->real;
		}
		double toReal() const {
			return (this->isFixed) ? (double) this->fixed : this->real;
		}

		Number add(const Number &other) const {
			Number result;
			result.isFixed = isFixed && other.isFixed;
			if (result.isFixed) {
				result.fixed = fixed + other.fixed;
			} else {
				result.real = toReal() + other.toReal();
			}
			return result;
		}

		Number subtract(const Number &other) const {
			Number result;
			result.isFixed = isFixed && other.isFixed;
			if (result.isFixed) {
				result.fixed = fixed - other.fixed;
			} else {
				result.real = toReal() - other.toReal();
			}
			return result;
		}

		Number multiply(const Number &other) const {
			Number result;
			result.isFixed = isFixed && other.isFixed;
			if (result.isFixed) {
				result.fixed = fixed * other.fixed;
			} else {
				result.real = toReal() * other.toReal();
			}
			return result;
		}

		Number divide(const Number &other) const {
			Number result;
			result.isFixed = isFixed && other.isFixed
					&& (fixed % other.fixed == 0);
			if (result.isFixed) {
				result.fixed = fixed / other.fixed;
			} else {
				result.real = toReal() / other.toReal();
			}
			return result;
		}

		Number quotient(const Number &other) const {
			Number result;
			result.isFixed = isFixed && other.isFixed;
			if (result.isFixed) {
				result.fixed = fixed / other.fixed;
			} else {
				result.real = toReal() / other.toReal();
			}
			return result;
		}

		Number modulus(const Number &other) const {
			// TODO check, optimise
			Number result;
			result.isFixed = true;
			long mod = toFixed() % other.toFixed();
			if (mod * other.toFixed() < 0) {
				long absmod = labs(other.toFixed());
				if (mod > 0) {
					result.fixed = mod - absmod;
				} else {
					result.fixed = mod + absmod;
				}
			}
			return result;
		}

		Number remainder(const Number &other) const {
			Number result;
			result.isFixed = isFixed && other.isFixed;
			long rem = toFixed() % other.toFixed();
			if (rem > 0) {
				if (toFixed() < 0) result.fixed -= labs(other.toFixed());
				else if (rem > 0) result.fixed += labs(other.toFixed());
			}
			return result;
		}

		bool equals(const Number &other) const {
			if (isFixed && other.isFixed) {
				return fixed > other.fixed;
			} else {
				return toReal() > other.toReal();
			}
		}

		bool lessThan(const Number &other) const {
			if (isFixed && other.isFixed) {
				return fixed < other.fixed;
			} else {
				return toReal() < other.toReal();
			}
		}

		bool greaterThan(const Number &other) const {
			return !lessThan(other);
		}
	};


	class Value
	{
		Q_OBJECT

	public:
		Value(bool value);
		Value(int value);
		Value(unsigned int value);
		Value(const QString &value);

		// Type inspection
		bool isCharacter() const;
		bool isClosure() const;
		bool isContinuation() const;
		bool isEnvironment() const;
		bool isForeign() const;
		bool isList() const;
		bool isMacro() const;
		bool isNumber() const;
		bool isPair() const;
		bool isPort() const;
		bool isProcedure() const;
		bool isPromise() const;
		bool isString() const;
		bool isSymbol() const;
		bool isVector() const;

		// Type coercion
		const QString* toString() const;
		const unsigned int toNumber() const;

	private:
		unsigned int type;
	};
}
#endif // VALUE_H
