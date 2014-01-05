require "lumberjack.player"

export class GameState extends State
	new: =>
		super!

		@add Sprite 0, 0, "resource/bg.png"

		@player = Player 10, 10
		@add @player

	update: =>
		@player.velocity.y = if axel.keys\down("s") then 100 elseif axel.keys\down("w") then -100 else 0
		@player.velocity.x = if axel.keys\down("d") then 100 elseif axel.keys\down("a") then -100 else 0

		@player.angle += math.pi / 10 if axel.mouse\pressed("l")
		@player.angle -= math.pi / 10 if axel.mouse\pressed("r")

		super!