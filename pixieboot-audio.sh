
./InstallProgrammaInRoot \
	x11-libs/qt-sql \
	media-libs/libsamplerate \
	media-libs/libmad \
	media-sound/lastfmplayer 

ln -s /usr/lib/libx264.so.107 ./temp/usr/lib/libx264.so.78

mksquashfs ./temp lastfm.lzm -b 256k
chown hairmare lastfm.lzm 
mv lastfm.lzm /home/hairmare/pixieboot-pkgs/


