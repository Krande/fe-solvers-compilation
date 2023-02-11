cd source
export PREFIX=$CONDA_PREFIX
export LIBPATH_libs=$CONDA_LIBRARY_PATH
export INCLUDES_libs=$CONDA_INCLUDE_PATH

export LIBPATH_METIS="${CONDA_LIBRARY_PATH}"
export INCLUDES_METIS="${CONDA_INCLUDE_PATH}"
export LD_LIBRARY_PATH="${LIBPATH_METIS}:${LD_LIBRARY_PATH}"

export LIBPATH_MUMPS="${CONDA_LIBRARY_PATH}"
export INCLUDES_MUMPS="${CONDA_INCLUDE_PATH}"
export LD_LIBRARY_PATH="${LIBPATH_MUMPS}:${LD_LIBRARY_PATH}"

# --use-config=wafcfg_conda \
./waf_std distclean
./waf_std \
  --prefix=$CONDA_PREFIX \
  --without-hg \
  configure
./waf_std build
./waf_std install