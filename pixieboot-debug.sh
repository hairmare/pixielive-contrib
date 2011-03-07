
./InstallProgrammaInRoot \
	dev-util/strace 

mksquashfs ./temp strace.lzm -b 256k
chown hairmare strace.lzm 
mv strace.lzm /home/hairmare/pixieboot-pkgs/


