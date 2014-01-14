require "axel.library"
require "lumberjack.title_state"
require "lumberjack.game_state"
require "lumberjack.particles"

axel.create = =>
	Particles\initialize!

axel\initialize TitleState, 4