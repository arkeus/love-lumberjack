require "lumberjack.image_tile_mapper"

export class World extends Tilemap
	@liquid_tiles: { 9, 10, 19, 20 }

	new: (map, tileset) =>
		super!
		data = ImageTileMapper!\build map, @@tile_mapping
		@load data, tileset, 4, 4, 25
		for tile in *@get_tiles(@@liquid_tiles)
			tile.callback = (tile, player) -> player\submerge!

	@tile_mapping: { color, index for index, color in ipairs {
		0x000000, 0x1f1400, 0x222222, 0x0c90ff, 0xe22929,
        0x239e0f, 0x0d8906, 0x100a00, 0x007df8, 0xda1e1e,
        0x1c7c0c, 0x066600, 0xa7f49d, 0x0972ca, 0xb32020,
        0x653e0b, 0x4e2700, 0x313131, 0x0063c4, 0xac1717,
        0x372400, 0x301f00, 0x393939, 0x363636, 0x000000,
        0x2cb21a, 0x4c2f0a, 0x474747, 0x7b5626, 0x5e3e13,
        0x6c491b, 0x000000, 0x6f6f6f, 0x000000, 0x000000,
        0x000000, 0x000000, 0x000000, 0x745020, 0x634217,
        0x000000, 0x000000, 0x000000, 0x7c7c7c, 0x636363,
        0x000000, 0x000000, 0x000000, 0x000000, 0x000000,
	} }