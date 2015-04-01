# Download casabalnca
rm -fR casablanca
mkdir casablanca
cd casablanca
wget https://wastoragebld.blob.core.windows.net/libcpprest/libcpprest_2_3.tar.gz
tar xvzf libcpprest_2_3.tar.gz
ln -s libcpprest.so.2.3 libcpprest.so
cd ..

# Generate build script
rm -fR Microsoft.WindowsAzure.Storage/build.*
mkdir Microsoft.WindowsAzure.Storage/build.debug
cd Microsoft.WindowsAzure.Storage/build.debug
cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_TESTS=ON -DBUILD_SAMPLES=ON
cd ../..
