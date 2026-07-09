#!/bin/bash

mkdir rust
cd rust

git init
git remote add origin https://github.com/rust-lang/rust

git fetch --depth 1 origin 31fca3adb283cc9dfd56b49cdee9a96eb9c96ffd
git checkout 31fca3a
git switch -c safa-stable
git apply ../*.patch

cp ../bootstrap-gh.toml bootstrap.toml
git submodule update --init --depth 1 --recursive
