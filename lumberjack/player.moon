export class Player extends Sprite
	@speed: 50

	new: (x, y) =>
		super x, y, "resource/player.png", 5, 5

		@animations\add "stand", { 0 }, 0
		@animations\add "walk", { 0, 1 }, 4
		@animations\play "walk"

	update: =>
		@velocity.y = if axel.keys\down("s") then @@speed elseif axel.keys\down("w") then -@@speed else 0
		@velocity.x = if axel.keys\down("d") then @@speed elseif axel.keys\down("a") then -@@speed else 0
		@animations\play if @velocity\is_zero! then "stand" else "walk"
		super!