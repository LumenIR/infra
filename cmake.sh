
#local PROJECTS="clang;lld;lldb;"
PROJECTS="clang;llr;"

cmake ../repos/llvm -G Ninja -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_EXTERNAL_PROJECTS=${PROJECTS} \
    -DLLVM_ENABLE_PROJECTS=${PROJECTS} \
    -DCMAKE_C_FLAGS="-gsplit-dwarf" \
    -DCMAKE_CXX_FLAGS="-gsplit-dwarf" \
    -DLLVM_PARALLEL_LINK_JOBS=2 \
    -DLLVM_TARGETS_TO_BUILD="LumenIR;ARM;X86" \
    -DBUILD_SHARED_LIBS=1


