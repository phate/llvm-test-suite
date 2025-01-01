set(OPTFLAGS "${OPTFLAGS} -JAAAndersenTopDownLifetimeAware")

set(ANDERSEN_TOPDOWNLIFETIMEAWARE_ENABLED "YES" CACHE STRING "Determines whether Andersen alias analysis with top-down region-aware memory node elimination is enabled.")
set(CMAKE_C_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "")
