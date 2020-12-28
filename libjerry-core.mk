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
# 文   件   名: libjerry-core.mk
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
LOCAL_TARGET_NAME := libjerry-core.a

#*********************************************************************************************************
# Source list
#*********************************************************************************************************
LOCAL_SRCS := \
src/jerryscript/jerry-core/api/jerry-debugger-transport.c \
src/jerryscript/jerry-core/api/jerry-debugger.c \
src/jerryscript/jerry-core/api/jerry-snapshot.c \
src/jerryscript/jerry-core/api/jerry.c \
src/jerryscript/jerry-core/debugger/debugger.c \
src/jerryscript/jerry-core/ecma/base/ecma-alloc.c \
src/jerryscript/jerry-core/ecma/base/ecma-gc.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-collection.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-conversion.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-errol.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-external-pointers.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-number.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-string.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers-value.c \
src/jerryscript/jerry-core/ecma/base/ecma-helpers.c \
src/jerryscript/jerry-core/ecma/base/ecma-init-finalize.c \
src/jerryscript/jerry-core/ecma/base/ecma-lcache.c \
src/jerryscript/jerry-core/ecma/base/ecma-literal-storage.c \
src/jerryscript/jerry-core/ecma/base/ecma-module.c \
src/jerryscript/jerry-core/ecma/base/ecma-property-hashmap.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-array-iterator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-array-prototype-unscopables.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-arraybuffer-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-arraybuffer.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-async-function-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-async-function.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-async-generator-function.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-async-generator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-async-generator.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-async-iterator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-bigint-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-bigint.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-boolean-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-boolean.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-dataview-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-dataview.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-date-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-date.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-error-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-error.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-evalerror-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-evalerror.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-function-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-function.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-generator-function.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-generator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-generator.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-global.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-handlers.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-helpers-date.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-helpers-error.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-helpers-json.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-helpers-sort.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-helpers.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-intrinsic.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-iterator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-json.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-map-iterator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-map-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-map.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-math.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-number-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-number.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-object-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-object.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-promise-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-promise.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-proxy.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-rangeerror-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-rangeerror.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-referenceerror-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-referenceerror.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-reflect.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-regexp-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-regexp.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-set-iterator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-set-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-set.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-string-iterator-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-string-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-string.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-symbol-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-symbol.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-syntaxerror-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-syntaxerror.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-type-error-thrower.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-typeerror-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-typeerror.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-urierror-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-urierror.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-weakmap-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-weakmap.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-weakset-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtin-weakset.c \
src/jerryscript/jerry-core/ecma/builtin-objects/ecma-builtins.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-bigint64array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-bigint64array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-biguint64array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-biguint64array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-float32array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-float32array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-float64array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-float64array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-int16array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-int16array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-int32array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-int32array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-int8array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-int8array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-typedarray-helpers.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-typedarray-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-typedarray.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint16array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint16array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint32array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint32array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint8array-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint8array.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint8clampedarray-prototype.c \
src/jerryscript/jerry-core/ecma/builtin-objects/typedarray/ecma-builtin-uint8clampedarray.c \
src/jerryscript/jerry-core/ecma/operations/ecma-arguments-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-array-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-arraybuffer-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-async-generator-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-big-uint.c \
src/jerryscript/jerry-core/ecma/operations/ecma-bigint-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-bigint.c \
src/jerryscript/jerry-core/ecma/operations/ecma-boolean-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-comparison.c \
src/jerryscript/jerry-core/ecma/operations/ecma-container-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-conversion.c \
src/jerryscript/jerry-core/ecma/operations/ecma-dataview-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-eval.c \
src/jerryscript/jerry-core/ecma/operations/ecma-exceptions.c \
src/jerryscript/jerry-core/ecma/operations/ecma-function-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-get-put-value.c \
src/jerryscript/jerry-core/ecma/operations/ecma-iterator-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-jobqueue.c \
src/jerryscript/jerry-core/ecma/operations/ecma-lex-env.c \
src/jerryscript/jerry-core/ecma/operations/ecma-number-arithmetic.c \
src/jerryscript/jerry-core/ecma/operations/ecma-number-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-objects-general.c \
src/jerryscript/jerry-core/ecma/operations/ecma-objects.c \
src/jerryscript/jerry-core/ecma/operations/ecma-promise-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-proxy-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-reference.c \
src/jerryscript/jerry-core/ecma/operations/ecma-regexp-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-string-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-symbol-object.c \
src/jerryscript/jerry-core/ecma/operations/ecma-typedarray-object.c \
src/jerryscript/jerry-core/jcontext/jcontext.c \
src/jerryscript/jerry-core/jmem/jmem-allocator.c \
src/jerryscript/jerry-core/jmem/jmem-heap.c \
src/jerryscript/jerry-core/jmem/jmem-poolman.c \
src/jerryscript/jerry-core/jrt/jrt-fatals.c \
src/jerryscript/jerry-core/lit/lit-char-helpers.c \
src/jerryscript/jerry-core/lit/lit-magic-strings.c \
src/jerryscript/jerry-core/lit/lit-strings.c \
src/jerryscript/jerry-core/parser/js/byte-code.c \
src/jerryscript/jerry-core/parser/js/common.c \
src/jerryscript/jerry-core/parser/js/js-lexer.c \
src/jerryscript/jerry-core/parser/js/js-parser-expr.c \
src/jerryscript/jerry-core/parser/js/js-parser-mem.c \
src/jerryscript/jerry-core/parser/js/js-parser-module.c \
src/jerryscript/jerry-core/parser/js/js-parser-statm.c \
src/jerryscript/jerry-core/parser/js/js-parser-tagged-template-literal.c \
src/jerryscript/jerry-core/parser/js/js-parser-util.c \
src/jerryscript/jerry-core/parser/js/js-parser.c \
src/jerryscript/jerry-core/parser/js/js-scanner-ops.c \
src/jerryscript/jerry-core/parser/js/js-scanner-util.c \
src/jerryscript/jerry-core/parser/js/js-scanner.c \
src/jerryscript/jerry-core/parser/regexp/re-bytecode.c \
src/jerryscript/jerry-core/parser/regexp/re-compiler.c \
src/jerryscript/jerry-core/parser/regexp/re-parser.c \
src/jerryscript/jerry-core/vm/opcodes-ecma-arithmetics.c \
src/jerryscript/jerry-core/vm/opcodes-ecma-bitwise.c \
src/jerryscript/jerry-core/vm/opcodes-ecma-relational-equality.c \
src/jerryscript/jerry-core/vm/opcodes.c \
src/jerryscript/jerry-core/vm/vm-stack.c \
src/jerryscript/jerry-core/vm/vm-utils.c \
src/jerryscript/jerry-core/vm/vm.c \

#*********************************************************************************************************
# Header file search path (eg. LOCAL_INC_PATH := -I"Your header files search path")
#*********************************************************************************************************
LOCAL_INC_PATH := \
-I"./src/jerryscript/jerry-core/include" \
-I"./src/jerryscript/jerry-core" \
-I"./src/jerryscript/jerry-core/api" \
-I"./src/jerryscript/jerry-core/debugger" \
-I"./src/jerryscript/jerry-core/ecma/base" \
-I"./src/jerryscript/jerry-core/ecma/builtin-objects" \
-I"./src/jerryscript/jerry-core/ecma/builtin-objects/typedarray" \
-I"./src/jerryscript/jerry-core/ecma/operations" \
-I"./src/jerryscript/jerry-core/jcontext" \
-I"./src/jerryscript/jerry-core/jmem" \
-I"./src/jerryscript/jerry-core/jrt" \
-I"./src/jerryscript/jerry-core/lit" \
-I"./src/jerryscript/jerry-core/parser/js" \
-I"./src/jerryscript/jerry-core/parser/regexp" \
-I"./src/jerryscript/jerry-core/vm" \
-I"./src/jerryscript/jerry-libm/include"

#*********************************************************************************************************
# Pre-defined macro (eg. -DYOUR_MARCO=1)
#*********************************************************************************************************
LOCAL_DSYMBOL := \
-DJERRY_CPOINTER_32_BIT=0 -DJERRY_DEBUGGER=0 -DJERRY_ERROR_MESSAGES=0 -DJERRY_EXTERNAL_CONTEXT=0  \
-DJERRY_GC_LIMIT="(0)" -DJERRY_GC_MARK_LIMIT="(8)" -DJERRY_GLOBAL_HEAP_SIZE="(128)"   \
-DJERRY_LINE_INFO=0 -DJERRY_LOGGING=0 -DJERRY_MEM_GC_BEFORE_EACH_ALLOC=0 -DJERRY_MEM_STATS=0   \
-DJERRY_NDEBUG -DJERRY_PARSER=1 -DJERRY_PARSER_DUMP_BYTE_CODE=0 -DJERRY_REGEXP_DUMP_BYTE_CODE=0   \
-DJERRY_REGEXP_STRICT_MODE=0 -DJERRY_SNAPSHOT_EXEC=0 -DJERRY_SNAPSHOT_SAVE=0 -DJERRY_STACK_LIMIT="(0)"   \
-DJERRY_SYSTEM_ALLOCATOR=0 -DJERRY_VALGRIND=0 -DJERRY_VM_EXEC_STOP=0 \
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
