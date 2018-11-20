mkdir -p lumenir_ws

mkdir -p lumenir_ws/repos lumenir_ws/build lumenir_ws/ws
git clone -b master git@github.com:LumenIR/infra.git lumenir_ws/repos/infra.git
git clone -b release_70 git@github.com:LumenIR/clang.git lumenir_ws/repos/clang
git clone -b llr_riscv git@github.com:LumenIR/clang.git lumenir_ws/repos/llvm
git clone -b master git@github.com:LumenIR/llr.gi lumenir_ws/repos/llr


