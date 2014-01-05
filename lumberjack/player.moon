export class Player extends Sprite
	new: (x, y) =>
		super x, y, "resource/player.png", 5, 5

		@animations\add "stand", { 0 }, 0
		@animations\add "walk", { 0, 1 }, 4
		@animations\play "walk"

	update: =>
		@velocity.y = if axel.keys\down("s") then 100 elseif axel.keys\down("w") then -100 else 0
		@velocity.x = if axel.keys\down("d") then 100 elseif axel.keys\down("a") then -100 else 0
		@animations\play if @velocity\is_zero! then "stand" else "walk"
		super!