
./InstallProgrammaInRoot \
	media-libs/libquicktime \
	media-libs/faad2 \
	sci-libs/fftw \
	media-video/mjpegtools \
	media-libs/ilmbase \
	media-libs/openexr \
	media-video/cinelerra

ln -s /usr/lib/libx264.so.107 ./temp/usr/lib/libx264.so.78

mksquashfs ./temp cinelerra.lzm -b 256k
chown hairmare cinelerra.lzm 
mv cinelerra.lzm /home/hairmare/pixieboot-pkgs/


