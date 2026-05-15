set(OPTFLAGS "${OPTFLAGS} -JFunctionInlining -JPredicateCorrelation -JLoopUnswitching -JCommonNodeElimination -JInvariantValueRedirection -JDeadNodeElimination -JAAAndersenRegionAware -JStoreValueForwarding -JInvariantValueRedirection -JPredicateCorrelation -JLoadChainSeparation -JNodeReduction -JDeadNodeElimination -JLoopUnswitching -JInvariantValueRedirection -JDeadNodeElimination -JInvariantValueRedirection -JDeadNodeElimination -JNodeReduction -JCommonNodeElimination -JDeadNodeElimination -JNodePullIn -JInvariantValueRedirection -JDeadNodeElimination -JLoopUnrolling -JInvariantValueRedirection -JIfConversion -JCommonNodeElimination -JDeadNodeElimination")

set(ANDERSEN_REGIONAWARE_ENABLED "YES" CACHE STRING "Determines whether Andersen alias analysis with region-aware encoding is enabled.")
set(CMAKE_C_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "")
