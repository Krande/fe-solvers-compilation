# Need to specify bash in order for conda activate to work.
SHELL=/bin/bash
# Note that the extra activate is needed to ensure that the activate floats env to the front of PATH
ACTIVATE=source $HOME/mambaforge/etc/profile.d/conda.sh ; conda activate ;
CONDA_ACTIVATE=$(ACTIVATE) conda activate ca-dev;
CONDA_BUILD_ACTIVATE=$(ACTIVATE) conda activate conda-build;
VERSION_MED=4.1.0
VERSION_ASRUN=2021.1.0
VERSION_MUMPS=5.2.1_aster2
VERSION_ASTER=15.5.2


define mktemp
if [ ! -d temp/med ]; then \
    mkdir -p temp/med; \
fi
if [ ! -d temp/mumps_seq ]; then \
    mkdir -p temp/mumps_seq; \
fi
endef

dev:
	mamba env update -f environment.yml --prune

dev2:
	mamba env update -f environment.condabuild.yml --prune

build:
	$(CONDA_ACTIVATE) cp config/wafcfg_conda.py source/wafcfg_conda.py && ./build.sh

build-conda:
	$(CONDA_BUILD_ACTIVATE) conda mambabuild .

checkout:
	cd source && git checkout tags/$(VERSION_ASTER)

# Various Downloads
med:
	$(mktemp) && cd temp/med && \
	wget --no-check-certificate \
    http://files.salome-platform.org/Salome/other/med-${VERSION_MED}.tar.gz \
    -O med.tar.gz && tar xf med.tar.gz -C . --strip-components 1

asrun:
	hg clone -r ${VERSION_ASRUN} http://hg.code.sf.net/p/prereq/frontend temp/frontend

mumps:
	$(mktemp) && hg clone -r ${VERSION_MUMPS} http://hg.code.sf.net/p/prereq/mumps temp/mumps_seq