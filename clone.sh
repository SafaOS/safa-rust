#!/bin/bash

mkdir rust
cd rust

git init
git remote add origin https://github.com/rust-lang/rust

git fetch --filter=blob:none origin 2d8144b7880597b6e6d3dfd63a9a9efae3f533d3
git checkout 2d8144b78
git switch -c safa-stable
git apply ../*.patch

cp ../bootstrap-gh.toml bootstrap.toml
git submodule update --init --filter=blob:none --recursive
