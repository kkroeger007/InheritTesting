QT += core
QT -= gui

CONFIG += c++11

TARGET = Exe
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    pose/geodetic_posiiton.cpp \
    misc/data_2d.cpp \
    misc/data_3d.cpp \
    geometry/base_polygon.cpp \
    pose/cartesian_position_2d.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    pose/abstract_position.h \
    pose/base_position.h \
    pose/cartesian_position_2D.h \
    pose/cartesian_position_3D.h \
    pose/coordinate_frame.h \
    pose/geodetic_position.h \
    misc/abstract_data.h \
    misc/data_2d.h \
    misc/data_3d.h \
    misc/data_forward_definition.h \
    geometry/base_polygon.h \
    geometry/geometry_helper.h
