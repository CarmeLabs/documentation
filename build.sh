pip install -r requirements.txt
cd ./docs-src/source/commands
source generate.sh
cd ../../
cd ./source/packages
source generate.sh
cd ../../
make html
cd ..
rm -rf ./docs
rm -rf ./doctrees
mv ./html ./docs
cp ./docs-src/CNAME ./docs/CNAME
git add ./docs/*
git add ./docs-src/*
git commit -m "Built documentation"
git push
