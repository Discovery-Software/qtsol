GUID = d9de5012-33f0-4c3e-8c91-ad7b5b7827f3

CONFIG(debug, debug|release) {
	Configuration = Debug
} else {
	Configuration = Release
}
SourceRootDir = "$$PWD/../.."
ApplicationDir = "$$SourceRootDir/build/bin/$$Configuration"
LibraryDir = "$$SourceRootDir/build/lib/$$Configuration"
ObjectsDir = "$$SourceRootDir/build/tmp/$$GUID/$$Configuration"
LibrariesDir = "$$SourceRootDir/libraries"

CONFIG	+= dll
TEMPLATE = lib

DEFINES += QTSOL_EXPORTS

DESTDIR = "$$LibraryDir"
DLLDESTDIR = "$$ApplicationDir"
OBJECTS_DIR = "$$ObjectsDir"

include(qtlockedfile/qtlockedfile.pri)
include(qtsingleapplication/qtsingleapplication.pri)
