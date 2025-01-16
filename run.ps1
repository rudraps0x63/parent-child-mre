# Parent addon
npm i

bare-make generate
bare-make build
bare-make install

npm pack
mv .\bare-addon-1.0.0.tgz .\child-addon\

# Move to child-addon subdir
cd child-addon

npm i
npm install bare-addon-1.0.0.tgz

bare-make generate
# bare-make build
# bare-make install