export class GameState extends State
	new: =>
		super!
		s = Sprite 10, 50
		s\create 50, 50, Color\red!
		@add s

		@add Sprite 100, 50, "resource/bg.png"