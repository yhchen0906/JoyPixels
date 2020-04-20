FONTS=/system/etc/fonts.xml
MIRRORPATH=/sbin/.core/mirror
[ -d $MIRRORPATH ] && FONTS=$MIRRORPATH$FONTS
FONTFILES=$( sed -ne '/<family lang="und-Zsye".*>/,/<\/family>/ s/.*<font weight="400" style="normal">\(.*\)<\/font>.*/\1/p' $FONTS )
for fontfile in $FONTFILES; do
  ln -s /system/fonts/joypixels-android.ttf $MODPATH/system/fonts/$fontfile
done