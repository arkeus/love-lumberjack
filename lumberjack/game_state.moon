require "lumberjack.player"
require "lumberjack.world"

export class GameState extends State
	new: =>
		super!

		@background = Sprite 0, 0, "resource/bg.png"
		with @background.scroll_factor
			.x = 0
			.y = 0
		@add @background

		@world = World "resource/map.png", "resource/tiles.png"
		@add @world

		@player = Player 20, 16
		@add @player

		@camera\follow @player
		@camera\set_bounds 0, 0, @world.width, @world.height

	update: =>
		super!
		axel\collide @player, @world