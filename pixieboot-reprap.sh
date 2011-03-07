
./InstallProgrammaInRoot dev-java/rxtx x11-apps/replicatorg-bin
mksquashfs ./temp replicatorg.lzm -b 256k
chown hairmare replicatorg.lzm && mv replicatorg.lzm /home/hairmare/pixieboot-pkgs/

./InstallProgrammaInRoot x11-apps/skeinforge 
mksquashfs ./temp skeinforge.lzm -b 256k
chown hairmare skeinforge.lzm && mv skeinforge.lzm /home/hairmare/pixieboot-pkgs/

./InstallProgrammaInRoot x11-libs/qt-opengl media-libs/glew dev-libs/opencsg sci-mathematics/cgal dev-cpp/eigen x11-apps/openscad
mksquashfs ./temp openscad.lzm -b 256k
chown hairmare openscad.lzm && cp openscad.lzm /home/hairmare/pixieboot-pkgs/


