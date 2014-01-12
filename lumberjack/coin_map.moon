export class CoinMap extends Group
	new: (tile_width, tile_height) =>
		super!
		map = love.image.newImageData "resource/coinmap.png"
		for x = 0, map\getWidth! - 1
			for y = 0, map\getHeight! - 1
				red, green, blue, alpha = map\getPixel x, y
				@add Coin x * tile_width, y * tile_height if blue == 0