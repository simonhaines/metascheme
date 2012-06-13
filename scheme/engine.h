#ifndef ENGINE_H
#define ENGINE_H

#include "value.h"

namespace scheme
{

	class Engine
	{

	public:
		Engine();
		virtual ~Engine();

		Value evaluate();
		void compile();

		Value newSymbol();
		Value newSymbol(const QString &name);
		Value nil();

		void collectGarbage();

	};
}

#endif // ENGINE_H
