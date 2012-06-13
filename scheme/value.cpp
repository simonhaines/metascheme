#include <QObject>
#include <QString>

#include "number.h"
#include "value.h"

using namespace scheme;

Value::Value(const QString &string) {
	type_ = Value::String;
	object_ = (QObject*) new QString(string);
}

Value::Value(const scheme::Number &number) {
	type_ = Value::Number;
	number_ = new scheme::Number(number);
}

Value::~Value() {}

void Value::clear() {
	switch(type_) {
	case Value::String:
		delete object_;
		object_ = NULL;
		break;
	case Value::Number:
		delete number_;
		number_ = NULL;
	}
}

bool Value::isCharacter() const {
	return (type_ & Value::Character) > 0;
}

bool Value::isClosure() const {
	return (type_ & Value::Closure) > 0;
}

bool Value::isContinuation() const {
	return (type_ & Value::Continuation) > 0;
}

bool Value::isEnvironment() const {
	return (type_ & Value::Environment) > 0;
}

bool Value::isForeign() const {
	return (type_ & Value::Foreign) > 0;
}

bool Value::isMacro() const {
	return (type_ & Value::Macro) > 0;

}

bool Value::isNumber() const {
	return (type_ & Value::Number) > 0;
}

bool Value::isPair() const {
	return (type_ & Value::Pair) > 0;
}

bool Value::isPort() const {
	return (type_ & Value::Port) > 0;
}

bool Value::isProcedure() const {
	return (type_ & Value::Procedure) > 0;
}

bool Value::isPromise() const {
	return (type_ & Value::Promise) > 0;
}

bool Value::isString() const {
	return (type_ & Value::String) > 0;
}

bool Value::isSymbol() const {
	return (type_ & Value::Symbol) > 0;
}

bool Value::isVector() const  {
	return (type_ & Value::Vector) > 0;
}
