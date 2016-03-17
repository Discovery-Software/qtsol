include(../../../config.pri)
QT *= network

PATH_TO_QT_SOLUTIONS = "$$dirname(PWD)"

INCLUDEPATH += "$$PATH_TO_QT_SOLUTIONS" \
	"$$PATH_TO_QT_SOLUTIONS/qtsinglecoreapplication" \
	"$$PATH_TO_QT_SOLUTIONS/qtlocalpeer" \
	"$$PATH_TO_QT_SOLUTIONS/qtlockedfile"

DEPENDPATH += "$$PATH_TO_QT_SOLUTIONS/qtsinglecoreapplication" \
	"$$PATH_TO_QT_SOLUTIONS/qtlocalpeer" \
	"$$PATH_TO_QT_SOLUTIONS/qtlockedfile"

LIBS *= -L$$MyLibraryDir -lqtscapp