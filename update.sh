target=$1

tar vfc $1.tar $1
rm -rf $1 $1.tar.gz
gzip $1.tar
git add $1.tar.gz
git commit -m "Update $1"
git push
md5sum $1.tar.gz
