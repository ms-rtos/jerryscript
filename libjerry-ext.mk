#*********************************************************************************************************
#
#                                 ���������Ϣ�������޹�˾
#
#                                   ΢�Ͱ�ȫʵʱ����ϵͳ
#
#                                       MS-RTOS(TM)
#
#                               Copyright All Rights Reserved
#
#--------------�ļ���Ϣ--------------------------------------------------------------------------------
#
# ��   ��   ��: libjerry-ext.mk
#
# ��   ��   ��: IoT Studio
#
# �ļ���������: 2020 �� 10 �� 12 ��
#
# ��        ��: ���ļ��� IoT Studio ���ɣ��������� Makefile ���ܣ������ֶ��޸�
#*********************************************************************************************************

#*********************************************************************************************************
# Clear setting
#*********************************************************************************************************
include $(CLEAR_VARS_MK)

#*********************************************************************************************************
# Target
#*********************************************************************************************************
LOCAL_TARGET_NAME := libjerry-ext.a

#*********************************************************************************************************
# Source list
#*********************************************************************************************************
LOCAL_SRCS := \
src/jerryscript/jerry-ext/arg/arg-js-iterator-helper.c \
src/jerryscript/jerry-ext/arg/arg-transform-functions.c \
src/jerryscript/jerry-ext/arg/arg.c \
src/jerryscript/jerry-ext/debugger/debugger-common.c \
src/jerryscript/jerry-ext/debugger/debugger-rp.c \
src/jerryscript/jerry-ext/debugger/debugger-serial.c \
src/jerryscript/jerry-ext/debugger/debugger-sha1.c \
src/jerryscript/jerry-ext/debugger/debugger-tcp.c \
src/jerryscript/jerry-ext/debugger/debugger-ws.c \
src/jerryscript/jerry-ext/handle-scope/handle-scope-allocator.c \
src/jerryscript/jerry-ext/handle-scope/handle-scope.c \
src/jerryscript/jerry-ext/handler/handler-assert.c \
src/jerryscript/jerry-ext/handler/handler-gc.c \
src/jerryscript/jerry-ext/handler/handler-print.c \
src/jerryscript/jerry-ext/handler/handler-register.c \
src/jerryscript/jerry-ext/handler/handler-resource-name.c \
src/jerryscript/jerry-ext/module/module.c

#*********************************************************************************************************
# Header file search path (eg. LOCAL_INC_PATH := -I"Your header files search path")
#*********************************************************************************************************
LOCAL_INC_PATH := \
-I"./src/jerryscript/jerry-ext/include" \
-I"./src/jerryscript/jerry-ext/common" \
-I"./src/jerryscript/jerry-core/include" \
-I"./src/jerryscript/jerry-libm/include"

#*********************************************************************************************************
# Pre-defined macro (eg. -DYOUR_MARCO=1)
#*********************************************************************************************************
LOCAL_DSYMBOL := \
-DJERRY_CPOINTER_32_BIT=0 -DJERRY_DEBUGGER=0 -DJERRY_ERROR_MESSAGES=0 -DJERRY_EXTERNAL_CONTEXT=0  \
-DJERRY_GC_LIMIT="(0)" -DJERRY_GC_MARK_LIMIT="(8)" -DJERRY_GLOBAL_HEAP_SIZE="(128)" -DJERRY_LINE_INFO=0  \
-DJERRY_LOGGING=0 -DJERRY_MEM_GC_BEFORE_EACH_ALLOC=0 -DJERRY_MEM_STATS=0 -DJERRY_NDEBUG -DJERRY_PARSER=1  \
-DJERRY_PARSER_DUMP_BYTE_CODE=0 -DJERRY_REGEXP_DUMP_BYTE_CODE=0 -DJERRY_REGEXP_STRICT_MODE=0  \
-DJERRY_SNAPSHOT_EXEC=0 -DJERRY_SNAPSHOT_SAVE=0 -DJERRY_STACK_LIMIT="(0)" -DJERRY_SYSTEM_ALLOCATOR=0  \
-DJERRY_VALGRIND=0 -DJERRY_VM_EXEC_STOP=0 \
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
