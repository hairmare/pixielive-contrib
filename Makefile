
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

# this lzm also replaces the stock ffmpeg lzm from pixielive
dist/openshot.lzm:
	./InstallProgrammaInRoot \
		dev-libs/DirectFB \
		media-sound/gsm \
		media-sound/sox \
		media-libs/libvpx \
		dev-python/librsvg-python \
		media-video/ffmpeg \
		media-plugins/frei0r-plugins \
		x11-libs/goocanvas \
		dev-python/pygoocanvas \
		media-libs/mlt \
		media-video/openshot
	mksquashfs ./temp dist/openshot.lzm -b 256k

dist/blender.lzm:
	./InstallProgrammaInRoot \
		media-gfx/blender
	mksquashfs ./temp dist/blender.lzm -b 256k

