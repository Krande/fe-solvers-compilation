#!/bin/bash
export CONDA_INCLUDE_PATH="$CONDA_PREFIX/include"
export CONDA_LIBRARY_PATH="$CONDA_PREFIX/lib"

cp $RECIPE_DIR/config/wafcfg_conda.py .

# Install for standard sequential
./waf_std \
  --use-config=wafcfg_conda \
  --without-hg \
  configure
./waf_std build
./waf_std install