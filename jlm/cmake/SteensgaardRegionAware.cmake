set(OPTFLAGS "${OPTFLAGS} -JAASteensgaardRegionAware")

set(STEENSGAARD_REGIONAWARE_ENABLED "YES" CACHE STRING "Determines whether Steensgaard alias analysis with region-aware encoding is enabled.")
set(CMAKE_C_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "")
