export class Player extends Sprite
	@air_acceleration: 250
	@liquid_acceleration: 50
	@air_drag: 300
	@liquid_drag: 6000
	@air_terminal: 400
	@liquid_terminal: 20
	@speed: 40

	new: (x, y) =>
		super x, y, "resource/player.png", 5, 5

		@acceleration.y = @@air_acceleration
		@liquid_timer = 0

		with @animations
			\add "stand", { 0, 0, 0, 0 }, 2, false
			\add "walk", { 0, 1 }, 4, true
			\play "stand"

	update: =>
		@physics!
		@input!
		@animation!
		super!

	physics: =>
		@liquid_timer -= 1
		if @liquid_timer > 0
			@drag.x = @@liquid_drag
			@acceleration.y = if @velocity.y > 0 then @@liquid_acceleration else @@air_acceleration
			@max_velocity.y = if @velocity.y > 0 then @@liquid_terminal else @@air_terminal
		else
			@drag.x = @@air_drag
			@acceleration.y = @@air_acceleration
			@max_velocity.y = @@air_terminal

	input: =>
		@velocity.x = if axel.keys\down("d") then @@speed elseif axel.keys\down("a") then -@@speed else 0
		@velocity.y = -100 if axel.keys\pressed("w") and @touching.down

	animation: =>
		if @velocity\is_zero!
			@animations\play "stand"
		else
			@animations\play "walk"
		@facing = LEFT if @velocity.x < 0
		@facing = RIGHT if @velocity.x > 0

	submerge: (tile_index) =>
		if @liquid_timer < 1
			particle_type = if tile_index == 9 or tile_index == 19 then "water" else "lava"
			axel.particle\emit particle_type, @center.x, @center.y, 10
		@liquid_timer = 3