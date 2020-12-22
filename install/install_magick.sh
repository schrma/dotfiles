# Check if everyhing is ok with
# /usr/local/bin/convert --version
sudo apt-get -y install ghostscript
sudo apt-get install -y libjpeg-dev
sudo apt-get install -y libtiff-dev
sudo apt-get install -y libgs-dev
git clone https://github.com/ImageMagick/ImageMagick.git ~/ImageMagick
cd ~/ImageMagick
./configure --with-gslib=yes
make 
sudo make install
sudo ldconfig /usr/local/lib


