CODE=$(wget --save-cookies cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([^&]+).*/\1\n/p')
if [ -z $2 ]
then
  OUTFILE=""
else
  OUTFILE="-O $2"
fi
wget $OUTFILE --load-cookies cookies.txt "https://docs.google.com/uc?export=download&confirm=$CODE&id=$1"
