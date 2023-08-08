# Questions & Answers


## How do I import code_Aster as a module in python

export LD_LIBRARY_PATH=/aster/aster/lib64/aster:${LD_LIBRARY_PATH}:.
export PYTHONPATH=/aster/aster/lib64/aster:${PYTHONPATH}:.

export ASTER_LIBDIR=/aster/aster/lib64/aster
export ASTER_DATADIR=/aster/aster/share/aster
export ASTER_LOCALEDIR=/aster/aster/share/locale/aster
export ASTER_ELEMENTSDIR=/aster/aster/lib64/aster

ASTER_PROFILE_LOADED=1


As part of a docker image

```dockerfile
# Test that the latest version is present
ENV LD_LIBRARY_PATH=/aster/aster/lib64/aster:${LD_LIBRARY_PATH}:.
ENV PYTHONPATH=/aster/aster/lib64/aster:${PYTHONPATH}:.

ENV ASTER_LIBDIR=/aster/aster/lib64/aster
ENV ASTER_DATADIR=/aster/aster/share/aster
ENV ASTER_LOCALEDIR=/aster/aster/share/locale/aster
ENV ASTER_ELEMENTSDIR=/aster/aster/lib64/aster

RUN python -c "import code_aster; code_aster.init()"
```