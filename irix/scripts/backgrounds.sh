#!/bin/sh
BGDIR=$HOME/backgrounds
cp /usr/lib/X11/system.backgrounds $HOME/.backgrounds
chmod 644 $HOME/.backgrounds
cd ${BGDIR}
for x in *.jpg *.xpm *.png *.bmp; do
case ${x} in
'*.jpg'|'*.xpm'|'*.png'|'*.bmp') ;;
*)
NAME=`echo ${x} | tr '.' ' ' | awk '{print $1}' | tr '_' ' '`
echo "" >> $HOME/.backgrounds
echo "background \""${NAME}"\"" >> $HOME/.backgrounds
echo "default \""-image ${BGDIR}/${x}"\"" >> $HOME/.backgrounds
;;
esac
done 
