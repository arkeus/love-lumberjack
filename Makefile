all::
	moonc -t build .
	mkdir build/resource || true
	cp -r resource/* build/resource

play: all
	love build

bundle: all
	mkdir bin || true
	rm -f bin/lumberjack.love
	cd build && zip -9 -r ../bin/lumberjack.love .