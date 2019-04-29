# ---------------------------------------------------------------
# Eventual prerequisits:
#
# Download and install miniconda
#    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
#    bash miniconda.sh -b -p $HOME/miniconda
#	   rm -f miniconda.sh
#    export PATH="$HOME/miniconda/bin:$PATH" (or add to .bashrc)
#
#    conda config --add channels conda-forge
#
# Download and install pycharm:
#    wget http://download.jetbrains.com/python/pycharm-community-2017.3.4.tar.gz -O pycharm.tar.gz
#    tar -xzf pycharm.tar.gz
#    rm -f pycharm.tar.gz
#    export PATH="$HOME/pycharm/bin:$PATH" (or add to .bashrc)
#
# Install and configure git:
#    git config --global user.name "Alexander Gruber"
#    git config --global user.email reddy.gruber@icloud.com
#    git config --global core.excludesfile ~/.gitignore_global (add *.pyc !!!)
#        # .pyc files must be untracked to be ignored! if not, use git rm -f filename.pyc
#
# Setup the GitHub SSH keys
#
# Install C++ compiler : http://aka.ms/vcpython27
#
# ---------------------------------------------------------------

cd ~/python
conda create -y -n dev xarray netCDF4 scipy matplotlib basemap 
activate dev

pip install pynetcf
git clone git@github.com:alexgruber/pytesmo.git
cd pytesmo
python setup.py develop

