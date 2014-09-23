#ifndef DDL_GLOBAL_H
#define DDL_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(DDL_LIBRARY)
#  define DDLSHARED_EXPORT Q_DECL_EXPORT
#else
#  define DDLSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // DDL_GLOBAL_H
