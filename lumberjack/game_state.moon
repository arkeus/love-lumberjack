require "lumberjack.player"
require "lumberjack.world"

export class GameState extends State
	new: =>
		super!

		@add Sprite 0, 0, "resource/bg.png"

		@world = World "resource/map.png", "resource/tiles.png"
		@add @world

		@player = Player 0, 0
		@add @player

		@camera\follow @player
		@camera\set_bounds 0, 0, @world.width, @world.height