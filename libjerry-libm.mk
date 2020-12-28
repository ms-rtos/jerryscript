#*********************************************************************************************************
#
#                                 北京翼辉信息技术有限公司
#
#                                   微型安全实时操作系统
#
#                                       MS-RTOS(TM)
#
#                               Copyright All Rights Reserved
#
#--------------文件信息--------------------------------------------------------------------------------
#
# 文   件   名: libjerry-libm.mk
#
# 创   建   人: IoT Studio
#
# 文件创建日期: 2020 年 10 月 12 日
#
# 描        述: 本文件由 IoT Studio 生成，用于配置 Makefile 功能，请勿手动修改
#*********************************************************************************************************

#*********************************************************************************************************
# Clear setting
#*********************************************************************************************************
include $(CLEAR_VARS_MK)

#*********************************************************************************************************
# Target
#*********************************************************************************************************
LOCAL_TARGET_NAME := libjerry-libm.a

#*********************************************************************************************************
# Source list
#*********************************************************************************************************
LOCAL_SRCS := \
src/jerryscript/jerry-libm/acos.c \
src/jerryscript/jerry-libm/acosh.c \
src/jerryscript/jerry-libm/asin.c \
src/jerryscript/jerry-libm/asinh.c \
src/jerryscript/jerry-libm/atan.c \
src/jerryscript/jerry-libm/atan2.c \
src/jerryscript/jerry-libm/atanh.c \
src/jerryscript/jerry-libm/cbrt.c \
src/jerryscript/jerry-libm/ceil.c \
src/jerryscript/jerry-libm/copysign.c \
src/jerryscript/jerry-libm/cosh.c \
src/jerryscript/jerry-libm/exp.c \
src/jerryscript/jerry-libm/expm1.c \
src/jerryscript/jerry-libm/fabs.c \
src/jerryscript/jerry-libm/finite.c \
src/jerryscript/jerry-libm/floor.c \
src/jerryscript/jerry-libm/fmod.c \
src/jerryscript/jerry-libm/isnan.c \
src/jerryscript/jerry-libm/log.c \
src/jerryscript/jerry-libm/log10.c \
src/jerryscript/jerry-libm/log1p.c \
src/jerryscript/jerry-libm/log2.c \
src/jerryscript/jerry-libm/nextafter.c \
src/jerryscript/jerry-libm/pow.c \
src/jerryscript/jerry-libm/scalbn.c \
src/jerryscript/jerry-libm/sinh.c \
src/jerryscript/jerry-libm/sqrt.c \
src/jerryscript/jerry-libm/tanh.c \
src/jerryscript/jerry-libm/trig.c

#*********************************************************************************************************
# Header file search path (eg. LOCAL_INC_PATH := -I"Your header files search path")
#*********************************************************************************************************
LOCAL_INC_PATH := \
-I"./src/jerryscript/jerry-libm/include"

#*********************************************************************************************************
# Pre-defined macro (eg. -DYOUR_MARCO=1)
#*********************************************************************************************************
LOCAL_DSYMBOL := \
-DNDEBUG

#*********************************************************************************************************
# Compiler flags
#*********************************************************************************************************
LOCAL_CFLAGS   := 
LOCAL_CXXFLAGS := 

#*********************************************************************************************************
# Depend library (eg. LOCAL_DEPEND_LIB := -la LOCAL_DEPEND_LIB_PATH := -L"Your library search path")
#*********************************************************************************************************
LOCAL_DEPEND_LIB      := 
LOCAL_DEPEND_LIB_PATH := 

#*********************************************************************************************************
# C++ config
#*********************************************************************************************************
LOCAL_USE_CXX        := no
LOCAL_USE_CXX_EXCEPT := no

#*********************************************************************************************************
# Code coverage config
#*********************************************************************************************************
LOCAL_USE_GCOV := no

#*********************************************************************************************************
# Stack check config
#*********************************************************************************************************
LOCAL_USE_STACK_CHECK := no

#*********************************************************************************************************
# User link command
#*********************************************************************************************************
LOCAL_PRE_LINK_CMD   := 
LOCAL_POST_LINK_CMD  := 
LOCAL_PRE_STRIP_CMD  := 
LOCAL_POST_STRIP_CMD := 

#*********************************************************************************************************
# Depend target
#*********************************************************************************************************
LOCAL_DEPEND_TARGET := 

include $(STATIC_LIBRARY_MK)

#*********************************************************************************************************
# End
#*********************************************************************************************************
