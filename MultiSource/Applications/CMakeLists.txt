if(NOT TARGET_OS STREQUAL "OpenBSD")
  add_subdirectory(JM)
endif()

add_subdirectory(SIBsim4)
add_subdirectory(aha)
add_subdirectory(d)
if(NOT ARCH STREQUAL "PowerPC")
# This test has problems running on powerpc starting with r295538 and should
# be restored when the issue is corrected.
  if((NOT DEFINED JLC_WITH_ANDERSEN_AGNOSTIC) AND (NOT DEFINED STEENSGAARD_AGNOSTIC_ENABLED) AND (NOT DEFINED ANDERSEN_REGIONAWARE_ENABLED) AND (NOT DEFINED STEENSGAARD_REGIONAWARE_ENABLED))
    # JLC: Andersen with agnostic encoding runs out of memory
    # JLC: Andersen with region-aware encoding runs out of memory
    # JLC: Steensgaard with agnostic encoding runs out of memory
    # JLC: Steensgaard with region-aware encoding runs out of memory
    add_subdirectory(oggenc)
  endif()
endif()
add_subdirectory(sgefa)
add_subdirectory(spiff)
add_subdirectory(viterbi)

# JLC: GlobalAlias constants are not supported.
#add_subdirectory(ALAC)
# JLC: invoke is not supported.
#add_subdirectory(hbd)
# C++ benchmark
#add_subdirectory(lambda-0.1.3)
# JLC: invoke is not supported.
#add_subdirectory(minisat)
if(NOT TARGET_OS STREQUAL "SunOS")
  # C++ benchmark
  #add_subdirectory(hexxagon)
endif()
if(NOT DEFINED SMALL_PROBLEM_SIZE)
  add_subdirectory(lua)
endif()
if((TARGET_OS STREQUAL "Linux" OR TARGET_OS STREQUAL "Darwin") AND (NOT ARCH STREQUAL "XCore"))
  # JLC produces the wrong result
  #add_subdirectory(obsequi)
endif()
if(NOT TARGET_OS STREQUAL "SunOS")
# C++ benchmark
#  add_subdirectory(kimwitu++)
endif()
if(NOT TARGET_OS STREQUAL "SunOS")
  if((NOT DEFINED JLC_WITH_ANDERSEN_AGNOSTIC) AND (NOT DEFINED ANDERSEN_REGIONAWARE_ENABLED))
    # JLC: Andersen with agnostic encoding runs out of memory
    # JLC: Andersen with region-aware encoding runs out of memory
    add_subdirectory(SPASS)
  endif()
endif()
if(NOT ARCH STREQUAL "XCore")
  add_subdirectory(ClamAV)
  add_subdirectory(lemon)
  add_subdirectory(siod)
endif()
if((NOT ARCH STREQUAL "PowerPC") AND (NOT ARCH STREQUAL "XCore"))
  if((NOT DEFINED JLC_WITH_ANDERSEN_AGNOSTIC) AND (NOT DEFINED STEENSGAARD_AGNOSTIC_ENABLED) AND (NOT DEFINED ANDERSEN_REGIONAWARE_ENABLED) AND (NOT DEFINED STEENSGAARD_REGIONAWARE_ENABLED))
    # JLC: Andersen with agnostic encoding runs out of memory
    # JLC: Andersen with region-aware encoding runs out of memory
    # JLC: Steensgaard with agnostic encoding runs out of memory
    # JLC: Steensgaard with region-aware encoding runs out of memory
    add_subdirectory(sqlite3)
  endif()
endif()
if(NOT TEST_SUITE_BENCHMARKING_ONLY)
  add_subdirectory(Burg)
  add_subdirectory(treecc)
endif()
