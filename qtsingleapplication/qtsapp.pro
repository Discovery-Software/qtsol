GUID = d9de5012-33f0-4c3e-8c91-ad7b5b7827f3

CONFIG(debug, debug|release) {
	Configuration = Debug
} else {
	Configuration = Release
}

PATH_TO_QT_SOLUTIONS = "$$dirname(PWD)"
_QTSCAPD2 = "$$dirname(PATH_TO_QT_SOLUTIONS)"
SourceRootDir = "$$dirname(_QTSCAPD2)"
ApplicationDir = "$$SourceRootDir/build/$$Configuration/bin"
LibraryDir = "$$SourceRootDir/build/$$Configuration/lib"
ObjectsDir = "$$SourceRootDir/build/$$Configuration/tmp/$$TARGET-$$GUID"
LibrariesDir = "$$SourceRootDir/libraries"

CONFIG	+= dll
TEMPLATE = lib

QT *= network

DESTDIR = "$$LibraryDir"
DLLDESTDIR = "$$ApplicationDir"
OBJECTS_DIR = "$$ObjectsDir"

DEFINES *= QTSOL_LIBRARY
INCLUDEPATH *= "$$PATH_TO_QT_SOLUTIONS"
INCLUDEPATH *= "$$PATH_TO_QT_SOLUTIONS/qtlockedfile"
INCLUDEPATH *= "$$PATH_TO_QT_SOLUTIONS/qtlocalpeer"

HEADERS += "$$PATH_TO_QT_SOLUTIONS/qtsol_global.h"

HEADERS += "$$PATH_TO_QT_SOLUTIONS/qtlockedfile/qtlockedfile.h"
SOURCES += "$$PATH_TO_QT_SOLUTIONS/qtlockedfile/qtlockedfile.cpp"
SOURCES += "$$PATH_TO_QT_SOLUTIONS/qtlockedfile/qtlockedfile_win.cpp"

HEADERS += "$$PATH_TO_QT_SOLUTIONS/qtsingleapplication/qtsingleapplication.h"
SOURCES += "$$PATH_TO_QT_SOLUTIONS/qtsingleapplication/qtsingleapplication.cpp"

HEADERS += "$$PATH_TO_QT_SOLUTIONS/qtlocalpeer/qtlocalpeer.h"
SOURCES += "$$PATH_TO_QT_SOLUTIONS/qtlocalpeer/qtlocalpeer.cpp"
