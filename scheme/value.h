#ifndef VALUE_H
#define VALUE_H

#include<QString>

namespace scheme
{
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
        QString* toString() const;
        unsigned int toNumber() const;

    private:
        unsigned int type;
        union {
            void *data;  // Raw data
            QObject *object;  // Number, String etc
            struct Cons {
                Cell *car;
                Cell *cdr;
            };
        };
    };
}
#endif // VALUE_H
