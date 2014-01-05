all::
	moonc -t build .
	mkdir build/resource || true
	cp -r resource/* build/resource

play: all
	love build