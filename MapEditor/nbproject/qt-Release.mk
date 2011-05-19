#############################################################################
# Makefile for building: dist/Release/GNU-Linux-x86/MapEditor
# Generated by qmake (2.01a) (Qt 4.7.2) on: ?? ??? 19 12:18:27 2011
# Project:  nbproject/qt-Release.pro
# Template: app
# Command: /usr/bin/qmake VPATH=. -o qttmp-Release.mk nbproject/qt-Release.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -Inbproject -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -Isrc -Iqtforms -I../common_include -Iqtforms -Iqtforms -I.
LINK          = g++
LFLAGS        = -Wl,-O1 -Wl,-rpath,/usr/lib/qt4
LIBS          = $(SUBLIBS)  -L/usr/lib/qt4 -lQtGui -L/usr/lib/qt4 -L/usr/X11R6/lib -lQtCore -lgthread-2.0 -lrt -lglib-2.0 -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = build/Release/GNU-Linux-x86/

####### Files

SOURCES       = src/MapInfo.cpp \
		qtforms/MainForm.cpp \
		src/main.cpp \
		src/MapArea.cpp \
		qtforms/DialogNew.cpp qtforms/moc_DialogNew.cpp \
		qtforms/moc_MainForm.cpp \
		qtforms/moc_MapArea.cpp
OBJECTS       = build/Release/GNU-Linux-x86/MapInfo.o \
		build/Release/GNU-Linux-x86/MainForm.o \
		build/Release/GNU-Linux-x86/main.o \
		build/Release/GNU-Linux-x86/MapArea.o \
		build/Release/GNU-Linux-x86/DialogNew.o \
		build/Release/GNU-Linux-x86/moc_DialogNew.o \
		build/Release/GNU-Linux-x86/moc_MainForm.o \
		build/Release/GNU-Linux-x86/moc_MapArea.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		nbproject/qt-Release.pro
QMAKE_TARGET  = MapEditor
DESTDIR       = dist/Release/GNU-Linux-x86/
TARGET        = dist/Release/GNU-Linux-x86/MapEditor

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: qttmp-Release.mk $(TARGET)

$(TARGET): qtforms/ui_DialogNew.h qtforms/ui_MainForm.h $(OBJECTS)  
	@$(CHK_DIR_EXISTS) dist/Release/GNU-Linux-x86/ || $(MKDIR) dist/Release/GNU-Linux-x86/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

qttmp-Release.mk: nbproject/qt-Release.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/lib/qt4/libQtGui.prl \
		/usr/lib/qt4/libQtCore.prl
	$(QMAKE) VPATH=. -o qttmp-Release.mk nbproject/qt-Release.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_phonon.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/lib/qt4/libQtGui.prl:
/usr/lib/qt4/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) VPATH=. -o qttmp-Release.mk nbproject/qt-Release.pro

dist: 
	@$(CHK_DIR_EXISTS) nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0 || $(MKDIR) nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0/ && $(COPY_FILE) --parents src/MapInfo.h qtforms/DialogNew.h qtforms/MainForm.h ../common_include/Nya.hpp qtforms/ui_MainForm.h src/MapArea.h qtforms/ui_DialogNew.h nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0/ && $(COPY_FILE) --parents src/MapInfo.cpp qtforms/MainForm.cpp src/main.cpp src/MapArea.cpp qtforms/DialogNew.cpp nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0/ && $(COPY_FILE) --parents qtforms/DialogNew.ui qtforms/MainForm.ui nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0/ && (cd `dirname nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0` && $(TAR) MapEditor1.0.0.tar MapEditor1.0.0 && $(COMPRESS) MapEditor1.0.0.tar) && $(MOVE) `dirname nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0`/MapEditor1.0.0.tar.gz . && $(DEL_FILE) -r nbproject/build/Release/GNU-Linux-x86/MapEditor1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) qttmp-Release.mk


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: qtforms/moc_DialogNew.cpp qtforms/moc_MainForm.cpp qtforms/moc_MapArea.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) qtforms/moc_DialogNew.cpp qtforms/moc_MainForm.cpp qtforms/moc_MapArea.cpp
qtforms/moc_DialogNew.cpp: qtforms/ui_DialogNew.h \
		qtforms/DialogNew.h
	/usr/bin/moc $(DEFINES) $(INCPATH) qtforms/DialogNew.h -o qtforms/moc_DialogNew.cpp

qtforms/moc_MainForm.cpp: qtforms/ui_MainForm.h \
		qtforms/MainForm.h
	/usr/bin/moc $(DEFINES) $(INCPATH) qtforms/MainForm.h -o qtforms/moc_MainForm.cpp

qtforms/moc_MapArea.cpp: src/MapInfo.h \
		src/MapArea.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/MapArea.h -o qtforms/moc_MapArea.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qtforms/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qtforms/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: qtforms/ui_DialogNew.h qtforms/ui_MainForm.h
compiler_uic_clean:
	-$(DEL_FILE) qtforms/ui_DialogNew.h qtforms/ui_MainForm.h
qtforms/ui_DialogNew.h: qtforms/DialogNew.ui
	/usr/bin/uic qtforms/DialogNew.ui -o qtforms/ui_DialogNew.h

qtforms/ui_MainForm.h: qtforms/MainForm.ui
	/usr/bin/uic qtforms/MainForm.ui -o qtforms/ui_MainForm.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

build/Release/GNU-Linux-x86/MapInfo.o: src/MapInfo.cpp src/MapInfo.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/MapInfo.o src/MapInfo.cpp

build/Release/GNU-Linux-x86/MainForm.o: qtforms/MainForm.cpp qtforms/MainForm.h \
		qtforms/ui_MainForm.h \
		qtforms/DialogNew.h \
		qtforms/ui_DialogNew.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/MainForm.o qtforms/MainForm.cpp

build/Release/GNU-Linux-x86/main.o: src/main.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/main.o src/main.cpp

build/Release/GNU-Linux-x86/MapArea.o: src/MapArea.cpp src/MapArea.h \
		src/MapInfo.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/MapArea.o src/MapArea.cpp

build/Release/GNU-Linux-x86/DialogNew.o: qtforms/DialogNew.cpp qtforms/DialogNew.h \
		qtforms/ui_DialogNew.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/DialogNew.o qtforms/DialogNew.cpp

build/Release/GNU-Linux-x86/moc_DialogNew.o: qtforms/moc_DialogNew.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/moc_DialogNew.o qtforms/moc_DialogNew.cpp

build/Release/GNU-Linux-x86/moc_MainForm.o: qtforms/moc_MainForm.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/moc_MainForm.o qtforms/moc_MainForm.cpp

build/Release/GNU-Linux-x86/moc_MapArea.o: qtforms/moc_MapArea.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Release/GNU-Linux-x86/moc_MapArea.o qtforms/moc_MapArea.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

