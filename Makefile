
#AUDIO

dist/lastfm.lzm:
	./InstallProgrammaInRoot \
		x11-libs/qt-sql \
		media-libs/libsamplerate \
		media-libs/libmad \
		media-sound/lastfmplayer 
	ln -s /usr/lib/libx264.so.107 ./temp/usr/lib/libx264.so.78
	mksquashfs ./temp dist/lastfm.lzm -b 256k

# DEBUG

dist/strace.lzm:
	./InstallProgrammaInRoot \
		dev-util/strace 
	mksquashfs ./temp dist/strace.lzm -b 256k

# REPRAP

dist/replicatorg.lzm:
	./InstallProgrammaInRoot \
		dev-java/rxtx \
		x11-apps/replicatorg-bin
	mksquashfs ./temp dist/replicatorg.lzm -b 256k

dist/skeinforge.lzm:
	./InstallProgrammaInRoot \
		x11-apps/skeinforge 
	mksquashfs ./temp dist/skeinforge.lzm -b 256k

dist/openscad.lzm:
	./InstallProgrammaInRoot \
		x11-libs/qt-opengl \
		media-libs/glew \
		dev-libs/opencsg \
		sci-mathematics/cgal \
		dev-cpp/eigen \
		x11-apps/openscad
	mksquashfs ./temp dist/openscad.lzm -b 256k

# VLOG

dist/cinelerra.lzm:
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
