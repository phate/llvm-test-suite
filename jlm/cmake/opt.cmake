set(OPTFLAGS "${OPTFLAGS} -JFunctionInlining -JInvariantValueRedirection -JPredicateCorrelation -JNodeReduction -JDeadNodeElimination -JLoopUnswitching -JInvariantValueRedirection -JDeadNodeElimination -JNodePushOut -JInvariantValueRedirection -JDeadNodeElimination -JNodeReduction -JCommonNodeElimination -JDeadNodeElimination -JNodePullIn -JInvariantValueRedirection -JDeadNodeElimination -JLoopUnrolling -JInvariantValueRedirection")

set(CMAKE_C_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "")
