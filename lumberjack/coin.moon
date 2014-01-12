export class Coin extends Sprite
	new: (x, y) =>
		super x, y, "resource/coin.png", 2, 3

		with @animations
			\add "shine", { 0, 0, 0, 0, 0, 1, 2, 3, 4 }, 8
			\play "shine"

		@offset.x = -1

	collect: =>
		axel.particle\emit "coin", @center.x, @center.y, 50
		@destroy!