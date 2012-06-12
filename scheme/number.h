#ifndef NUMBER_H
#define NUMBER_H

#include <QObject>

namespace scheme
{
    class Number {
        Q_OBJECT

    public:
        Number();
        virtual ~Number();

        bool isFixed() { return fixed_; }
        long toFixed() const { return (isFixed_) ? fixed_ : (long) real_; }
        double toReal() const { return (isFixed_) ? (double) fixed_ : real_; }

        Number add(const Number &other) const;
        Number subtract(const Number &other) const;
        Number multiply(const Number &other) const;
        Number divide(const Number &other) const;
        Number quotient(const Number &other) const;
        Number modulus(const Number &other) const;
        Number remainder(const Number &other) const;

        bool isEqualTo(const Number &other) const;
        bool isLessThan(const Number &other) const;
        bool isGreaterThan(const Number &other) const;

    private:
        bool isFixed_;
        union {
            long fixed_;
            double real_;
        };
    };
}

#endif // NUMBER_H
