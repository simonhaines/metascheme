#include "value.h"
#include "engine.h"

using namespace scheme;

struct StackFrame {
	int opcode;
	Value *args;
	Value *environment;
	Value *code;
};

Engine::Engine()
{
}
