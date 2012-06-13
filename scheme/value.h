#ifndef VALUE_H
#define VALUE_H

#include <QString>

#include "number.h"

namespace scheme
{
	class Value // 'pointer' in TinyScheme
    {
    public:
		enum Type {
			String = 1, Number, Symbol, Procedure, Pair, Closure, Continuation,
			Foreign, Character, Port, Vector, Macro, Promise, Environment
		};

		Value(const scheme::Number &number);
		Value(const QString &string);
		virtual ~Value();
		void clear();

        // Type inspection
		bool isCharacter() const;
		bool isClosure() const;
		bool isContinuation() const;
		bool isEnvironment() const;
		bool isForeign() const;
		bool isMacro() const;
		bool isNumber() const;
		bool isPair() const;
		bool isPort() const;
		bool isProcedure() const;
		bool isPromise() const;
		bool isString() const;
		bool isSymbol() const;
		bool isVector() const;

    private:
		unsigned int type_;
		union {  // TODO make this union implicitly shared for fast copying
			void *data_;  // Raw data
			scheme::Number *number_;
			QObject *object_;  // String, Vector etc
        };
    };
}
#endif // VALUE_H
