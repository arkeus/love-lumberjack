export class GameState extends State
	new: =>
		super!
		@s = Sprite 10, 50
		@s\create 50, 50, Color\red!
		@add @s

		@add Sprite 100, 50, "resource/bg.png"

	update: =>
		@s.velocity.y = if axel.keys\down("s") then 100 elseif axel.keys\down("w") then -100 else 0
		@s.velocity.x = if axel.keys\down("d") then 100 elseif axel.keys\down("a") then -100 else 0

		super!