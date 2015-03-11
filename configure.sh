# Download casabalnca
rm -fR casablanca
mkdir casablanca
cd casablanca
wget https://wastoragebld.blob.core.windows.net/libcpprest/libcpprest_2_3.tar.gz
tar xvzf libcpprest_2_3.tar.gz
cd ..

# Generate build script
mkdir Microsoft.WindowsAzure.Storage/build.release
cd Microsoft.WindowsAzure.Storage/build.release
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=ON -DBUILD_SAMPLES=ON
cd ../..
