# Need to specify bash in order for conda activate to work.
SHELL=/bin/bash
# Note that the extra activate is needed to ensure that the activate floats env to the front of PATH
CONDA_ACTIVATE=source /home/kristoffer/mambaforge/etc/profile.d/conda.sh ; conda activate ; conda activate ca-dev;


dev:
	mamba env update -f environment.yml --prune

copy :
	cp -r /home/kristoffer/mambaforge/envs/ca-dev/lib/python3.9/site-packages/code_aster .

build:
	$(CONDA_ACTIVATE) cp config/wafcfg_conda.py source/wafcfg_conda.py && ./build.sh