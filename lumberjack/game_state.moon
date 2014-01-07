require "lumberjack.player"
require "lumberjack.world"

export class GameState extends State
	new: =>
		super!

		@add with @background = Sprite 0, 0, "resource/bg.png"
			.scroll_factor\zero!

		@add with @world = World "resource/map.png", "resource/tiles.png" do nil
		@add with @player = Player 20, 16 do nil

		@add with @text = Text 10, 0, "This is a test"
			.zoomable = false
			.scroll_factor\zero!

		@camera\follow @player
		@camera\set_bounds 0, 0, @world.width, @world.height

	update: =>
		super!
		axel\collide @player, @world