

# --------------------------------------------------------------------------------------------------------
# !!! ON THE HPC, MINICONDA AND PYCHARM SHOULD BE INSTALLED ON $VSC_DATA DUE TO LIMITED SPACE ON $HOME !!!
# --------------------------------------------------------------------------------------------------------


# ------------------------------------------------------------------------------------------
# Download and install miniconda:
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
rm -f miniconda.sh

# Add bin directory to .bashrc (or .bash_profile):
export PATH="$HOME/miniconda/bin:$PATH"

# Add the conda-forge channel for package downloads:
conda config --add channels conda-forge

# Install most important packages
conda install pandas scipy matplotlib basemap netCDF4 xarray


# ------------------------------------------------------------------------------------------
# Download and install pycharm:
# (Make sure you have the latest version; however, on the HPC there were some issues so an older version may be necessary)
wget http://download.jetbrains.com/python/pycharm-community-2019.1.2.tar.gz -O pycharm.tar.gz
tar -xzf pycharm.tar.gz
rm -f pycharm.tar.gz

# Add bin directory to .bashrc (or .bash_profile):
export PATH="$HOME/pycharm/bin:$PATH"

# !!! Make sure that the correct python interpreter is used in PyCharm !!!
# That means your miniconda python installation, not a possible default system installation, e.g. on the HPC.
#
# Go to: Preferences / Project: python / Project Interpreter
# That should be: ~/miniconda3/bin/python (or wherever you installed it)


# ------------------------------------------------------------------------------------------
# Install and configure git:
git config --global user.name "Alexander Gruber"
git config --global user.email reddy.gruber@icloud.com
git config --global core.excludesfile ~/.gitignore_global # (add *.pyc !!!)

# Setup the GitHub SSH keys!!
