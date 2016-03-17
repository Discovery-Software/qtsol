GUID = d9de5012-33f0-4c3e-8c91-ad7b5b7827f3
DEFINES += QTSOL_LIBRARY

CONFIG(debug, debug|release) {
	Configuration = Debug
} else {
	Configuration = Release
}
SourceRootDir = "$$PWD/../.."
ApplicationDir = "$$SourceRootDir/build/$$Configuration/bin"
LibraryDir = "$$SourceRootDir/build/$$Configuration/lib"
ObjectsDir = "$$SourceRootDir/build/$$Configuration/tmp/$$TARGET-$$GUID"
LibrariesDir = "$$SourceRootDir/libraries"

CONFIG	+= dll
TEMPLATE = lib

DEFINES += QTSOL_EXPORTS

DESTDIR = "$$LibraryDir"
DLLDESTDIR = "$$ApplicationDir"
OBJECTS_DIR = "$$ObjectsDir"
INCLUDEPATH *= "$$PWD"

HEADERS += qtsol_global.h

include(qtlockedfile/qtlockedfile.pri)
include(qtsingleapplication/qtsingleapplication.pri)
