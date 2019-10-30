cd ../SE_Book_CN  &&\
find . -name ".DS_Store" -exec rm -rf {} \; &&\
git checkout master &&\
/usr/local/lib/node_modules/node/bin/gitbook init &&\
/usr/local/lib/node_modules/node/bin/gitbook build &&\
find . -name ".DS_Store" -exec rm -rf {} \; &&\
git add . &&\
git commit -m 'Update SE_Book_CN content' &&\
git push origin master &&\
git checkout gh-pages &&\
rm -rf * &&\
git checkout master -- _book &&\
mv _book/* ./ &&\
rm -rf _book &&\
rm -rf publish.sh &&\
git add . &&\
git commit -m 'auto publish gh-pages' &&\
git push origin gh-pages &&\
git checkout master
