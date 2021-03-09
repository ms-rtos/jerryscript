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
# 文   件   名: toolchain_msrtos.cmake
#
# 创   建   人: Jiao.JinXing(焦进星)
#
# 文件创建日期: 2017 年 02 月 20 日
#
# 描        述: MS-RTOS CMAKE 工具链描述文件(适用于 APP 和应用静态库)
#*********************************************************************************************************

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)
cmake_minimum_required(VERSION 3.7)

#*********************************************************************************************************
# config.mk
#*********************************************************************************************************
set(MSRTOS_BASE_PATH "D:/Work/workspace_iot/msrtos_base")
set(TOOLCHAIN_PREFIX arm-msrtos-eabi-)
set(FPU_TYPE         "disable")
set(FLOAT_ABI        "softfp")
set(CPU_TYPE         "cortex-m4")

#*********************************************************************************************************
# target.mk
#*********************************************************************************************************
set(LOCAL_INC_PATH         "")
set(LOCAL_DSYMBOL          "")
set(LOCAL_CFLAGS           "")
set(LOCAL_CXXFLAGS         "")
set(LOCAL_LINKFLAGS        "")
set(LOCAL_DEPEND_LIB       "")
set(LOCAL_DEPEND_LIB_PATH  "")
set(LOCAL_USE_CXX          "no")
set(LOCAL_USE_CXX_EXCEPT   "no")
set(LOCAL_USE_GCOV         "no")
set(LOCAL_USE_STACK_CHECK  "no")

#*********************************************************************************************************
# arch.mk
#*********************************************************************************************************

#*********************************************************************************************************
# ARM
#*********************************************************************************************************
if(TOOLCHAIN_PREFIX STREQUAL arm-msrtos-eabi-)
set(ARCH_COMMONFLAGS    "")

set(ARCH_PIC_ASFLAGS    "")
set(ARCH_PIC_CFLAGS     "-fPIC -fno-plt -mno-pic-data-is-text-relative -msingle-pic-base -mpic-register=9")
set(ARCH_PIC_LDFLAGS    "-Wl,--long-plt -Wl,-shared -fPIC -shared -fno-plt -mno-pic-data-is-text-relative -msingle-pic-base -mpic-register=9")

set(ARCH_KO_CFLAGS      "-mlong-calls")
set(ARCH_KO_LDFLAGS     "-nostdlib -r -mlong-calls")

set(ARCH_KLIB_CFLAGS    "")

set(ARCH_KERNEL_CFLAGS  "")
set(ARCH_KERNEL_LDFLAGS "")

if(FPU_TYPE STREQUAL disable)
set(ARCH_FPUFLAGS       "")
else()
set(ARCH_FPUFLAGS       "-mfloat-abi=${FLOAT_ABI} -mfpu=${FPU_TYPE}")
endif()

set(ARCH_CPUFLAGS       "-mcpu=${CPU_TYPE} -mthumb -mlittle-endian ${ARCH_FPUFLAGS}")
endif()

#*********************************************************************************************************
# RISC-V
#*********************************************************************************************************
if(TOOLCHAIN_PREFIX STREQUAL riscv-none-embed-)
set(ARCH_COMMONFLAGS    "-mcmodel=medany -mno-save-restore")

set(ARCH_PIC_ASFLAGS    "")
set(ARCH_PIC_CFLAGS     "-fPIC")
set(ARCH_PIC_LDFLAGS    "-Wl,-shared -fPIC -shared")

set(ARCH_KO_CFLAGS      "-fPIC")
set(ARCH_KO_LDFLAGS     "-r -fPIC")

set(ARCH_KLIB_CFLAGS    "")

set(ARCH_KERNEL_CFLAGS  "")
set(ARCH_KERNEL_LDFLAGS "")

set(ARCH_FPUFLAGS       "-mabi=${FPU_TYPE}")
set(ARCH_CPUFLAGS       "-march=${CPU_TYPE} ${ARCH_FPUFLAGS}")
endif()

#*********************************************************************************************************
# C-SKY 
#*********************************************************************************************************
if(TOOLCHAIN_PREFIX STREQUAL csky-msrtos-elfabiv2-)
set(ARCH_COMMONFLAGS    "")

set(ARCH_PIC_ASFLAGS    "")
set(ARCH_PIC_CFLAGS     "-fPIC")
set(ARCH_PIC_LDFLAGS    "-Wl,-shared -fPIC")

set(ARCH_KO_CFLAGS      "-Wa,-mno-force2bsr")
set(ARCH_KO_LDFLAGS     "-nostdlib -r")

set(ARCH_KLIB_CFLAGS    "-Wa,-mno-force2bsr")

set(ARCH_KERNEL_CFLAGS  "")
set(ARCH_KERNEL_LDFLAGS "")

set(ARCH_FPUFLAGS       "-m${FPU_TYPE}")
set(ARCH_CPUFLAGS       "-march=${CPU_TYPE} ${ARCH_FPUFLAGS}")
endif()

#*********************************************************************************************************
# gcc.mk
#*********************************************************************************************************

#*********************************************************************************************************
# specify cross compilers and tools
#*********************************************************************************************************
set(CMAKE_C_COMPILER_WORKS   1)
set(CMAKE_CXX_COMPILER_WORKS 1)

set(CMAKE_C_COMPILER    ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_CXX_COMPILER  ${TOOLCHAIN_PREFIX}g++)
set(CMAKE_ASM_COMPILER  ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_OBJCOPY       ${TOOLCHAIN_PREFIX}objcopy)
set(CMAKE_OBJDUMP       ${TOOLCHAIN_PREFIX}objdump)
set(CMAKE_AR            ${TOOLCHAIN_PREFIX}ar)
set(CMAKE_SIZE          ${TOOLCHAIN_PREFIX}size)
set(CMAKE_ELF2APP       ${TOOLCHAIN_PREFIX}elf2app)

#*********************************************************************************************************
# Compiler optimize flag
#*********************************************************************************************************
set(TOOLCHAIN_OPTIMIZE_DEBUG   "-O0 -g3 -gdwarf-2")
set(TOOLCHAIN_OPTIMIZE_RELEASE "-O2 -Os -g3 -gdwarf-2")

#*********************************************************************************************************
# Toolchain flag
#*********************************************************************************************************
set(TOOLCHAIN_CXX_CFLAGS           "-fvisibility-inlines-hidden")
set(TOOLCHAIN_CXX_EXCEPT_CFLAGS    "${TOOLCHAIN_CXX_CFLAGS} -fexceptions -frtti")
set(TOOLCHAIN_NO_CXX_EXCEPT_CFLAGS "${TOOLCHAIN_CXX_CFLAGS} -fno-exceptions -fno-rtti")
set(TOOLCHAIN_GCOV_CFLAGS          "-fprofile-arcs -ftest-coverage")
set(TOOLCHAIN_STACK_CHECK_FLAGS    "-fstack-usage -fstack-protector-all")
set(TOOLCHAIN_SECTIONS_FLAGS       "-fvisibility=hidden -fdata-sections -ffunction-sections")
set(TOOLCHAIN_COMMON_RAW_FLAGS     "-Wall -fmessage-length=0 -fsigned-char -fno-strict-aliasing -fomit-frame-pointer")
set(TOOLCHAIN_COMMONFLAGS          "${TOOLCHAIN_COMMON_RAW_FLAGS} ${TOOLCHAIN_SECTIONS_FLAGS}")
set(TOOLCHAIN_ASFLAGS              "-x assembler-with-cpp")
set(TOOLCHAIN_NO_UNDEF_SYM_FLAGS   "-Wl,--no-undefined -Wl,--no-allow-shlib-undefined -Wl,--error-unresolved-symbols -Wl,--unresolved-symbols=report-all")
set(TOOLCHAIN_AR_FLAGS             "-r")
set(TOOLCHAIN_STRIP_FLAGS          "")
set(TOOLCHAIN_STRIP_KO_FLAGS       "--strip-unneeded")

#*********************************************************************************************************
# Application.mk
#*********************************************************************************************************

#*********************************************************************************************************
# Include paths
#*********************************************************************************************************
set(TARGET_INC_PATH           "$(LOCAL_INC_PATH) -I${MSRTOS_BASE_PATH}/libmsrtos/src -I${MSRTOS_BASE_PATH}/libmsrtos/src/config -I${MSRTOS_BASE_PATH}/libmsrtos/src/arch -I${MSRTOS_BASE_PATH}/libmsrtos/src/bsp -I${MSRTOS_BASE_PATH}/libmsrtos/src/kern -I${MSRTOS_BASE_PATH}/libmsrtos/src/io -I${MSRTOS_BASE_PATH}/libmsrtos/src/cplusplus -I${MSRTOS_BASE_PATH}/libmsrtos/src/shell -I${MSRTOS_BASE_PATH}/libmsrtos/src/libc -I${MSRTOS_BASE_PATH}/libmsrtos/src/posix -I${MSRTOS_BASE_PATH}/libmsrtos/src/posix/inc -I${MSRTOS_BASE_PATH}/libmsrtos/src/analysis -I${MSRTOS_BASE_PATH}/libmsrtos/src/components -I${MSRTOS_BASE_PATH}/libmsrtos/src/driver -I${MSRTOS_BASE_PATH}/libmsrtos/src/net -I${MSRTOS_BASE_PATH}/libmsrtos/src/debugger -I${MSRTOS_BASE_PATH}/lwip_net/src/lwIP/src/include -I${MSRTOS_BASE_PATH}/lwip_net/src")

#*********************************************************************************************************
# Compiler preprocess
#*********************************************************************************************************
set(TARGET_DSYMBOL            "${LOCAL_DSYMBOL} -D__MS_RTOS__")

#*********************************************************************************************************
# Compiler flags
#*********************************************************************************************************
set(TARGET_CFLAGS             "${LOCAL_CFLAGS}")
set(TARGET_CXXFLAGS           "${LOCAL_CXXFLAGS}")
set(TARGET_LINKFLAGS          "${LOCAL_LINKFLAGS} ${LOCAL_DEPEND_LIB} ${LOCAL_DEPEND_LIB_PATH} -L${MSRTOS_BASE_PATH}/libmsrtos/Release")

#*********************************************************************************************************
# Depend and compiler parameter (cplusplus in kernel MUST NOT use exceptions and rtti)
#*********************************************************************************************************
if(LOCAL_USE_CXX_EXCEPT STREQUAL yes)
set(TARGET_CXX_EXCEPT         "${TOOLCHAIN_CXX_EXCEPT_CFLAGS}")
else()
set(TARGET_CXX_EXCEPT         "${TOOLCHAIN_NO_CXX_EXCEPT_CFLAGS}")
endif()

if(LOCAL_USE_GCOV STREQUAL yes)
set(TARGET_GCOV_FLAGS         "${TOOLCHAIN_GCOV_CFLAGS}")
else()
set(TARGET_GCOV_FLAGS         "")
endif()

if(LOCAL_USE_STACK_CHECK STREQUAL yes)
set(TARGET_STACK_CHECK_FLAGS  "${TOOLCHAIN_STACK_CHECK_FLAGS}")
else()
set(TARGET_STACK_CHECK_FLAGS  "")
endif()

set(TARGET_CPUFLAGS           "${ARCH_CPUFLAGS}")
set(TARGET_COMMONFLAGS        "${TARGET_CPUFLAGS}    ${ARCH_COMMONFLAGS} ${TOOLCHAIN_COMMONFLAGS} ${TARGET_GCOV_FLAGS} ${TARGET_STACK_CHECK_FLAGS}")

set(CMAKE_ASM_FLAGS           "${TARGET_COMMONFLAGS} ${ARCH_PIC_ASFLAGS} ${TOOLCHAIN_ASFLAGS} ${TARGET_DSYMBOL} ${TARGET_INC_PATH}" CACHE INTERNAL "ASM Compiler options")
set(CMAKE_C_FLAGS             "${TARGET_COMMONFLAGS} ${ARCH_PIC_CFLAGS}  ${TARGET_DSYMBOL} ${TARGET_INC_PATH} ${TARGET_CFLAGS}" CACHE INTERNAL "C Compiler options")
set(CMAKE_CXX_FLAGS           "${TARGET_COMMONFLAGS} ${ARCH_PIC_CFLAGS}  ${TARGET_DSYMBOL} ${TARGET_INC_PATH} ${TARGET_CXX_EXCEPT} ${TARGET_CXXFLAGS}" CACHE INTERNAL "C++ Compiler options")
set(CMAKE_EXE_LINKER_FLAGS    "${TARGET_CPUFLAGS}    ${ARCH_PIC_LDFLAGS} ${TOOLCHAIN_NO_UNDEF_SYM_FLAGS} ${TARGET_LINKFLAGS} -Wl,--gc-sections -e ms_app_main" CACHE INTERNAL "Linker options")

set(CMAKE_C_FLAGS_DEBUG             "${TOOLCHAIN_OPTIMIZE_DEBUG}")
set(CMAKE_C_FLAGS_RELEASE           "${TOOLCHAIN_OPTIMIZE_RELEASE}")
set(CMAKE_CXX_FLAGS_DEBUG           "${TOOLCHAIN_OPTIMIZE_DEBUG}")
set(CMAKE_CXX_FLAGS_RELEASE         "${TOOLCHAIN_OPTIMIZE_RELEASE}")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG    "${TOOLCHAIN_OPTIMIZE_DEBUG}")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE  "${TOOLCHAIN_OPTIMIZE_RELEASE}")

link_libraries(msuser c m gcc)
#*********************************************************************************************************
# End
#*********************************************************************************************************