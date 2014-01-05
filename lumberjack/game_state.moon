require "lumberjack.player"

export class GameState extends State
	new: =>
		super!

		@add Sprite 0, 0, "resource/bg.png"

		@player = Player 10, 10
		@add @player