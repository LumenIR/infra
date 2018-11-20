
#local PROJECTS="clang;lld;lldb;"
PROJECTS="clang;llr;"
CC=gcc
CXX=g++

cmake ../repos/llvm -G Ninja -DCMAKE_C_COMPILER=${CC} -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_EXTERNAL_PROJECTS=${PROJECTS} \
    -DLLVM_ENABLE_PROJECTS=${PROJECTS} \
    -DCMAKE_C_FLAGS="-fuse-ld=gold -gsplit-dwarf" \
    -DCMAKE_CXX_FLAGS="-fuse-ld=gold -gsplit-dwarf" \
    -DLLVM_PARALLEL_LINK_JOBS=2 \
    -DLLVM_TARGETS_TO_BUILD="X86;ARM" \
    -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="RISCV" \
    -DBUILD_SHARED_LIBS=1


