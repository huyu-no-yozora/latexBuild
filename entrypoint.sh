#!/bin/bash
# 
# MIT License
# 
# entrypoint.sh
# 
# Copyright (c) 2020 冬ノ夜空
# 

# files="${1}"
file="${1}"
compiler="${2}"
args="${3}"

function setupMakefile() {
    target_basename="${file%.*}"
    sed -i -e "s@template.pdf@${target_basename}.pdf@g" /Makefile
    sed -i -e "s@template.tex@${target_basename}.tex@g" /Makefile
}

# install make command
apt update && apt install -y build-essential

cp -f /.latexmkrc ./
setupMakefile
cp -f /Makefile   ./

make && make clean


