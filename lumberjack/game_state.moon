require "lumberjack.player"
require "lumberjack.world"
require "lumberjack.coin_map"

export class GameState extends State
	new: =>
		super!

		@add with @background = Sprite 0, 0, "resource/bg.png"
			.scroll\zero!

		@add with @world = World "resource/map.png", "resource/tiles.png" do nil
		@add with @player = Player 6, 27 do nil
		@add axel.particle.emitters
		@add with @coins = CoinMap @world.tile_width, @world.tile_height do nil

		@grid = GridCollider @world.width, @world.height
		@camera\follow @player
		@camera\set_bounds 0, 0, @world.width, @world.height

	update: =>
		super!
		axel\collide @player, @world
		axel\overlap @player, @coins, ((player, coin) => coin\collect!), @grid