require "lumberjack.player"
require "lumberjack.world"

export class GameState extends State
	new: =>
		super!

		@add with @background = Sprite 0, 0, "resource/bg.png"
			.scroll\zero!

		@add with @world = World "resource/map.png", "resource/tiles.png" do nil
		@add with @player = Player 20, 16 do nil

		@add with @text = Text 10, 0, "FPS: 0"
			.zoomable = false
			.scroll\zero!

		@camera\follow @player
		@camera\set_bounds 0, 0, @world.width, @world.height

	update: =>
		@add Text axel.mouse.x, axel.mouse.y, "L" if axel.mouse\pressed("l")
		@add Text axel.mouse.x, axel.mouse.y, "R" if axel.mouse\pressed("r")
		super!
		axel\collide @player, @world
		@text.text = "FPS: #{love.timer.getFPS!}"

		if axel.keys\pressed " "
			@camera\fade_out 1, Color\black!, ->
				@camera\fade_in 1