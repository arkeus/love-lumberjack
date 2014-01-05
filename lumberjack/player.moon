export class Player extends Sprite
	new: (x, y) =>
		super x, y, "resource/player.png", 5, 5

		@animations\add "walk", {0, 1}, 4
		@animations\play "walk"