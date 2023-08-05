import os


def configure(self):
    opts = self.options

    print('Running Conda Configuration')

    include_dir = os.getenv('CONDA_INCLUDE_PATH')
    lib_dir = os.getenv('CONDA_LIBRARY_PATH')

    self.env['ADDMEM'] = 600

    self.env.INCLUDES_BOOST = include_dir
    self.env.LIBPATH_BOOST = [lib_dir]
    self.env.LIB_BOOST = ['libboost_python310']
    self.env.TFELHOME= [os.getenv('CONDA_PREFIX'), os.getenv('CONDA_PREFIX') +'/bin']
    #self.env['TFELHOME'] = os.getenv("CONDA_PREFIX", lib_dir) + '/bin/mfront'
    # self.env['TFELVERS'] = '4.1.0'
    # self.env.MED_LIBS = [lib_dir]

    self.env.append_value('LIBPATH', [
        lib_dir,
    ])

    self.env.append_value('INCLUDES', [
        include_dir,
    ])

    # to fail if not found
    opts.enable_hdf5 = True
    opts.enable_med = True
    opts.enable_metis = True
    opts.enable_mumps = True
    opts.enable_scotch = True
    opts.enable_mfront = True
    print('Conda Configuration Complete')