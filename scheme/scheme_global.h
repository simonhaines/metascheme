#ifndef SCHEME_GLOBAL_H
#define SCHEME_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(SCHEME_LIBRARY)
#  define SCHEMESHARED_EXPORT Q_DECL_EXPORT
#else
#  define SCHEMESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // SCHEME_GLOBAL_H
