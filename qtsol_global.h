#ifndef QTSOL_GLOBAL_H
#define QTSOL_GLOBAL_H

#ifdef QT_VERSION
#include <QtCore/qglobal.h>
#endif

#ifndef Q_DECL_IMPORT
#	define Q_DECL_IMPORT __declspec(dllimport)
#endif

#ifndef Q_DECL_EXPORT
#	define Q_DECL_EXPORT __declspec(dllexport)
#endif

#if defined(QTSOL_LIBRARY)
#  define QTSOLSHARED_EXPORT Q_DECL_EXPORT
#else
#  define QTSOLSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // QTSOL_GLOBAL_H
