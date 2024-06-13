add_subdirectory(beamformer)
add_subdirectory(bmm)
# JLC produces incorrect FP result
#add_subdirectory(dbms)
add_subdirectory(ecbdes)
if(NOT "${ENDIAN}" STREQUAL "big")
  add_subdirectory(8b10b)
endif()
