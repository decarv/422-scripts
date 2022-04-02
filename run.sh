dt=$(date +"%Y%m%d%H%M%S")
tmp=$(date | md5sum | awk '{print $1}')
mkdir $tmp

cp mkiso.sh rdiso.sh $tmp

./mkiso.sh $tmp

rm -rf $tmp
