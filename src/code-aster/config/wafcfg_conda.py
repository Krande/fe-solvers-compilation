import os


def configure(self):
    opts = self.options
    include_dir = os.getenv('CONDA_INCLUDE_PATH')
    print(include_dir)
    print(self.env)
    self.env.append_value('INCLUDES', [
        include_dir,
    ])

    # to fail if not found
