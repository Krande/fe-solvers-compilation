# Questions & Answers

## Boost vs Boost-cpp

### Question
I was unable to find \*boost_python3\* in the `boost-cpp` package. 
I had to install `boost` to get it.

What is the equivalent in boost-cpp to this?

**Notes**

https://github.com/conda-forge/boost-feedstock/issues/53

### Answer
?


### How do I import code_Aster as a module in python

export LD_LIBRARY_PATH=/aster/aster/lib64/aster:${LD_LIBRARY_PATH}:.
export PYTHONPATH=/aster/aster/lib64/aster:${PYTHONPATH}:.

export ASTER_LIBDIR=/aster/aster/lib64/aster
export ASTER_DATADIR=/aster/aster/share/aster
export ASTER_LOCALEDIR=/aster/aster/share/locale/aster
export ASTER_ELEMENTSDIR=/aster/aster/lib64/aster

ASTER_PROFILE_LOADED=1