require "lumberjack.player"
require "lumberjack.world"

export class GameState extends State
	new: =>
		super!

		@add Sprite 0, 0, "resource/bg.png"
		@add World "resource/map.png", "resource/tiles.png"

		@player = Player 10, 10
		@add @player