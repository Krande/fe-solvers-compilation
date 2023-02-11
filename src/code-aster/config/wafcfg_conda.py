import os


def configure(self):
    opts = self.options
    include_dir = os.getenv('CONDA_INCLUDE_PATH')
    print(include_dir)
    #self.env.append_value('INCLUDES', [
    #    include_dir + '/metis/include',
    #])

    # to fail if not found
    opts.parallel = True
    opts.enable_petsc = True
    opts.enable_hdf5 = True
    opts.enable_med = True
    opts.enable_metis = True
    opts.enable_mumps = True
    opts.enable_scotch = True
    opts.enable_mfront = True
