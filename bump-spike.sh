#!/bin/bash

set -ex

tempdir=$(mktemp -d)
git clone https://github.com/Siudya/riscv-isa-sim.git -b nanhu-v3 ${tempdir}
make -C ${tempdir}/difftest -j
cp ${tempdir}/difftest/build/riscv64-spike-so .
rm ${tempdir} -rf

echo "Bump spike finish, the next step is to push spike to github."

