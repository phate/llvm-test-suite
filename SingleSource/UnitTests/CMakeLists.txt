include(CheckCCompilerFlag)

#add_subdirectory(C++11)
#add_subdirectory(Float)
add_subdirectory(Matrix)
add_subdirectory(SignlessTypes)
# JLC fails tls.test
#add_subdirectory(Threads)
# JLC produce: error: invalid cast opcode for cast from '<4 x i32>' to '<4 x i8>'
#add_subdirectory(Vector)
# JLC produce: invoke is not supported.
# UNREACHABLE executed at libjlm/src/frontend/llvm/LlvmInstructionConversion.cpp:1036
#add_subdirectory(Vectorizer)
#add_subdirectory(X86)

list(APPEND CFLAGS -Wno-implicit-function-declaration -Wno-implicit-int)

# FIXME: Disable SJLJ tests for now, until EH edges are represented.
# add_subdirectory(SetjmpLongjmp)
if(TARGET_OS STREQUAL "Darwin")
  add_subdirectory(ObjC)
  add_subdirectory(ObjC++)
endif()


#file(GLOB Source RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c *.cpp)
file(GLOB Source RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)

# JLC unsupported test
list(REMOVE_ITEM Source AtomicOps.c)
# JLC produces incorrect result
list(REMOVE_ITEM Source 2003-05-07-VarArgs.c)
list(REMOVE_ITEM Source 2003-08-11-VaListArg.c)

if(TARGET_OS STREQUAL "AIX" AND ARCH STREQUAL "PowerPC")
  list(REMOVE_ITEM Source 2007-04-25-weak.c)
  if (NOT PPC_IS_PPC64_ENABLED)
    list(REMOVE_ITEM Source AtomicOps.c)
  endif()
endif()
if(TARGET_OS STREQUAL "Darwin")
  list(REMOVE_ITEM Source 2007-04-25-weak.c)
  if(ARCH STREQUAL "PowerPC")
    list(REMOVE_ITEM Source AtomicOps.c)
  endif()
endif()
if(ARCH STREQUAL "AArch64")
  list(REMOVE_ITEM Source blockstret.c)
endif()
if(ARCH STREQUAL "Mips")
  add_subdirectory(Mips)
  # Only MIPS 64-bit supports 8 bytes atomic operations.
  if(NOT MIPS_IS_MIPS64_ENABLED)
    list(REMOVE_ITEM Source AtomicOps.c)
  endif()
endif()
if(ARCH STREQUAL "XCore")
  list(REMOVE_ITEM Source AtomicOps.c)
  list(REMOVE_ITEM Source initp1.cpp)
endif()
if(NOT ARCH STREQUAL "x86")
  list(REMOVE_ITEM Source
    ms_struct-bitfield.c
    ms_struct-bitfield-1.c
    ms_struct-bitfield-init.c
    ms_struct-bitfield-init-1.c
    ms_struct_pack_layout.c
    ms_struct_pack_layout-1.c
  )
endif()

llvm_singlesource()
