#!/bin/bash
export CONDA_INCLUDE_PATH="$CONDA_PREFIX/include"
export CONDA_LIBRARY_PATH="$CONDA_PREFIX/lib"

cp $RECIPE_DIR/config/wafcfg_conda.py .

# download MED
export VERSION_MED="4.1.0"
mkdir "med"
RUN wget --no-check-certificate \
    http://files.salome-platform.org/Salome/other/med-${VERSION_MED}.tar.gz \
    -O med.tar.gz && tar xf med.tar.gz -C . --strip-components 1 && rm med.tar.gz

# Install for standard sequential
./waf_std \
  --use-config=wafcfg_conda \
  --without-hg \
  configure
./waf_std build
./waf_std install