#############################################################################
# Makefile for building: MACETest
# Generated by qmake (3.0) (Qt 5.7.1)
# Project:  MACETest.pro
# Template: subdirs
# Command: C:/Qt/5.7/mingw53_32/bin/qmake.exe -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile MACETest.pro
#############################################################################

MAKEFILE      = Makefile

first: make_first
QMAKE         = C:/Qt/5.7/mingw53_32/bin/qmake.exe
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = cp -f
INSTALL_PROGRAM = cp -f
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
SUBTARGETS    =  \
		sub-Exe


sub-Exe-qmake_all:  FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile
	cd Exe/ && $(MAKE) -f Makefile qmake_all
sub-Exe: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile
sub-Exe-make_first: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile 
sub-Exe-all: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile all
sub-Exe-clean: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile clean
sub-Exe-distclean: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile distclean
sub-Exe-install_subtargets: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile install
sub-Exe-uninstall_subtargets: FORCE
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile uninstall

Makefile: MACETest.pro ../../Qt/5.7/mingw53_32/mkspecs/win32-g++/qmake.conf ../../Qt/5.7/mingw53_32/mkspecs/features/spec_pre.prf \
		../../Qt/5.7/mingw53_32/mkspecs/qdevice.pri \
		../../Qt/5.7/mingw53_32/mkspecs/features/device_config.prf \
		../../Qt/5.7/mingw53_32/mkspecs/common/angle.conf \
		../../Qt/5.7/mingw53_32/mkspecs/qconfig.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_clucene_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_core.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_core_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_designer.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_designer_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_gui.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_gui_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_help.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_help_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_location.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_location_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_network.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_network_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qml.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qml_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldebug_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quick.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quick_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sql.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sql_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_svg.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_svg_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_uiplugin.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xml.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xml_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../Qt/5.7/mingw53_32/mkspecs/features/qt_functions.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/qt_config.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/win32/qt_config.prf \
		../../Qt/5.7/mingw53_32/mkspecs/win32-g++/qmake.conf \
		../../Qt/5.7/mingw53_32/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../Qt/5.7/mingw53_32/mkspecs/features/exclusive_builds.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/toolchain.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/default_pre.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/win32/default_pre.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/resolve_config.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/exclusive_builds_post.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/default_post.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/qml_debug.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/win32/rtti.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/precompile_header.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/warn_on.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/file_copies.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/win32/windows.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/testcase_targets.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/exceptions.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/yacc.prf \
		../../Qt/5.7/mingw53_32/mkspecs/features/lex.prf \
		MACETest.pro
	$(QMAKE) -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile MACETest.pro
../../Qt/5.7/mingw53_32/mkspecs/features/spec_pre.prf:
../../Qt/5.7/mingw53_32/mkspecs/qdevice.pri:
../../Qt/5.7/mingw53_32/mkspecs/features/device_config.prf:
../../Qt/5.7/mingw53_32/mkspecs/common/angle.conf:
../../Qt/5.7/mingw53_32/mkspecs/qconfig.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_bootstrap_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_clucene_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_core.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_core_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_designer.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_designer_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_gui.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_gui_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_help.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_help_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_location.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_location_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_network.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_network_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_packetprotocol_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_platformsupport_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qml.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qml_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldebug_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quick.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quick_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sql.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_sql_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_svg.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_svg_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_uiplugin.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xml.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xml_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../Qt/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
../../Qt/5.7/mingw53_32/mkspecs/features/qt_functions.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/qt_config.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/win32/qt_config.prf:
../../Qt/5.7/mingw53_32/mkspecs/win32-g++/qmake.conf:
../../Qt/5.7/mingw53_32/mkspecs/features/spec_post.prf:
.qmake.stash:
../../Qt/5.7/mingw53_32/mkspecs/features/exclusive_builds.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/toolchain.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/default_pre.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/win32/default_pre.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/resolve_config.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/exclusive_builds_post.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/default_post.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/qml_debug.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/win32/rtti.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/precompile_header.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/warn_on.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/file_copies.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/win32/windows.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/testcase_targets.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/exceptions.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/yacc.prf:
../../Qt/5.7/mingw53_32/mkspecs/features/lex.prf:
MACETest.pro:
qmake: FORCE
	@$(QMAKE) -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile MACETest.pro

qmake_all: sub-Exe-qmake_all FORCE

make_first: sub-Exe-make_first  FORCE
all: sub-Exe-all  FORCE
clean: sub-Exe-clean  FORCE
distclean: sub-Exe-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash
install_subtargets: sub-Exe-install_subtargets FORCE
uninstall_subtargets: sub-Exe-uninstall_subtargets FORCE

sub-Exe-debug:
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile debug
debug: sub-Exe-debug

sub-Exe-release:
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile release
release: sub-Exe-release

sub-Exe-check:
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile check
check: sub-Exe-check

sub-Exe-benchmark:
	@test -d Exe/ || mkdir -p Exe/
	cd Exe/ && ( test -e Makefile || $(QMAKE) C:/Github/InheritTesting/Exe/Exe.pro -spec win32-g++ CONFIG+=debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile benchmark
benchmark: sub-Exe-benchmark
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

