export class GameState extends State
	new: =>
		super!
		print("CREATED A NEW STATE")

	draw: =>
		love.graphics.print("Testing draw", 10, 10)