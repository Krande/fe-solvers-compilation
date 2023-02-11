cd source

export CONDA_INCLUDE_PATH="$CONDA_PREFIX/include"
export CONDA_LIBRARY_PATH="$CONDA_PREFIX/lib"

./waf distclean
./waf \
  --use-config=wafcfg_conda \
  --without-hg \
  configure
./waf build
./waf install