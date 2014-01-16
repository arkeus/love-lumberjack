export class ImageTileMapper
	build: (graphic, mapping) =>
		data = love.image.newImageData graphic
		tiles = {}
		for y = 0, data\getHeight! - 1
			row = {}
			for x = 0, data\getWidth! - 1
				pixel = @color_to_int data\getPixel x, y
				table.insert row, mapping[pixel] or 0
			table.insert tiles, row
		tiles

	color_to_int: (r, g, b, a) => r * @@red_mul + g * @@green_mul + b * @@blue_mul

	@red_mul: 2 ^ 16
	@green_mul: 2 ^ 8
	@blue_mul: 1