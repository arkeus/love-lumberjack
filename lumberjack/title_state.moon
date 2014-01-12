require "lumberjack.game_state"

export class TitleState extends State
	new: =>
		super!
		@add Sprite 0, 0, "resource/title.png"

	update: =>
		if axel.keys\pressed " " or axel.keys\pressed "z"
			@camera\fade_out 1, Color\black!, ->
				axel.states\change(GameState!, true).camera\fade_in 1

		super!