#include "number.h"

using namespace scheme;

Number Number::add(const Number &other) const {
    Number result;
    result.isFixed_ = isFixed_ && other.isFixed_;
    if (result.isFixed_) {
        result.fixed_ = fixed_ + other.fixed_;
    } else {
        result.real_ = toReal() + other.toReal();
    }
    return result;
}

Number Number::subtract(const Number &other) const {
    Number result;
    result.isFixed_ = isFixed_ && other.isFixed_;
    if (result.isFixed_) {
        result.fixed_ = fixed_ - other.fixed_;
    } else {
        result.real_ = toReal() - other.toReal();
    }
    return result;
}

Number Number::multiply(const Number &other) const {
    Number result;
    result.isFixed_ = isFixed_ && other.isFixed_;
    if (result.isFixed_) {
            result.fixed_ = fixed_ * other.fixed_;
    } else {
            result.real_ = toReal() * other.toReal();
    }
    return result;
}

Number Number::divide(const Number &other) const {
    Number result;
    result.isFixed_ = isFixed_ && other.isFixed_
                    && (fixed_ % other.fixed_ == 0);
    if (result.isFixed_) {
			result.fixed_ = fixed_ / other.fixed_;
    } else {
            result.real_ = toReal() / other.toReal();
    }
    return result;
}

Number Number::quotient(const Number &other) const {
    Number result;
    result.isFixed_ = isFixed_ && other.isFixed_;
    if (result.isFixed_) {
            result.fixed_ = fixed_ / other.fixed_;
    } else {
            result.real_ = toReal() / other.toReal();
    }
    return result;
}

Number Number::modulus(const Number &other) const {
    // TODO check, optimise
    Number result;
    result.isFixed_ = true;
    long mod = toFixed() % other.toFixed();
    if (mod * other.toFixed() < 0) {
            long absmod = labs(other.toFixed());
            if (mod > 0) {
                    result.fixed_ = mod - absmod;
            } else {
                    result.fixed_ = mod + absmod;
            }
    }
    return result;
}

Number Number::remainder(const Number &other) const {
    // TODO fix, buggy
    Number result;
    result.isFixed_ = isFixed_ && other.isFixed_;
    long rem = toFixed() % other.toFixed();
    if (rem > 0) {
        if (toFixed() < 0) result.fixed_ -= labs(other.toFixed());
        else if (rem > 0) result.fixed_ += labs(other.toFixed());
    }
    return result;
}

bool Number::isEqualTo(const Number &other) const {
    if (isFixed_ && other.isFixed_) {
		return fixed_ == other.fixed_;
    } else {
		return toReal() == other.toReal();
    }
}

bool Number::isLessThan(const Number &other) const {
    if (isFixed_ && other.isFixed_) {
        return fixed_ < other.fixed_;
    } else {
        return toReal() < other.toReal();
    }
}

bool Number::isGreaterThan(const Number &other) const {
    return !isLessThan(other) && !isEqualTo(other);
}
