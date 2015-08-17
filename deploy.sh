set -e
rm -rf deploy
mkdir deploy
jekyll build
git clone git@github.com:noduleio/noduleio.github.io.git --branch master --single-branch deploy
cd deploy
git checkout master
git rm -r *
cp -R ../_site/* .
git add .
git commit -m 'Latest Blog'
git push origin master