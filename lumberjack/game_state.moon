require "lumberjack.player"
require "lumberjack.world"
require "lumberjack.coin"

export class GameState extends State
	new: =>
		super!

		@add with @background = Sprite 0, 0, "resource/bg.png"
			.scroll\zero!

		@add with @world = World "resource/map.png", "resource/tiles.png" do nil
		@add with @player = Player 20, 16 do nil
		@add axel.particle.emitters

		@camera\follow @player
		@camera\set_bounds 0, 0, @world.width, @world.height

		for i = 1, 50
			@coin = Coin math.random(0, axel.width), math.random(0, axel.height) + 0.5
			@add @coin

	update: =>
		if axel.mouse\pressed "r"
			axel.particle\emit "coin", axel.mouse.x, axel.mouse.y, 5, 1
			@add with @coin = Coin axel.mouse.x, axel.mouse.y do nil
		if axel.mouse\held "l"
			axel.particle\stream "coin", 90, 60, 10

		super!
		axel\collide @player, @world