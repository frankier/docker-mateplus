CODE=$(wget --save-cookies cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
wget --load-cookies cookies.txt "https://drive.google.com/uc?export=download&confirm=$CODE&id=$1"
