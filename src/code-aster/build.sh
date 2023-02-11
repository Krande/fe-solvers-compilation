cd source

export CONDA_INCLUDE_PATH="$CONDA_PREFIX/include"
export CONDA_LIBRARY_PATH="$CONDA_PREFIX/lib"

# --use-config=wafcfg_conda \
./waf_std distclean
./waf_std \
  --prefix=$CONDA_PREFIX \
  --use-config=wafcfg_conda \
  --without-hg \
  configure step
./waf_std build
./waf_std install