if(ARCH MATCHES "x86" OR ARCH MATCHES "riscv" OR
   ARCH MATCHES "SystemZ" OR ARCH MATCHES "Mips" OR
   ARCH MATCHES "AArch64" OR ARCH MATCHES "ARM" OR
   ARCH MATCHES "LoongArch")
  add_subdirectory(gcc-c-torture)
endif()

# Remove tests that doesn't work with JLC
file(GLOB Source RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)
# Blockaddress constants are not supported.
list(REMOVE_ITEM Source 2004-03-15-IndirectGoto.c)

list(APPEND LDFLAGS -lm)
list(APPEND CFLAGS -Wno-implicit-int)
llvm_singlesource(PREFIX "Regression-C-")
