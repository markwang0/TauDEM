# Script to setup MPICH
wget http://www.mpich.org/static/downloads/3.2.1/mpich-3.2.1.tar.gz --no-check-certificate

# Now following instructions in README
tar xzf mpich-3.2.1.tar.gz
mkdir mpich
cd mpich-3.2.1
export FFLAGS="-w -fallow-argument-mismatch -O2" # see https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91731
./configure --prefix=$WORK2/TauDEMDependencies/mpich/mpich-install 2>&1 | tee c.txt
make 2>&1 | tee m.txt
make install 2>&1 | tee mi.txt

# Add the following to .bashrc
PATH=$WORK2/TauDEMDependencies/mpich/mpich-install/bin:$PATH ; export PATH
