all::
	moonc -t build .
	cp -r resource build/resource

play: all
	love build