export class Particles
	@initialize: =>
		coin = Emitter "resource/player.png", 500
		coin.ps\setSpeed 50, 200
		coin.ps\setSizes 1, 2, 1, 2
		coin.ps\setColors 255, 255, 255, 255, 255, 255, 255, 0
		coin.ps\setEmitterLifetime 2
		coin.ps\setParticleLifetime 1
		coin.ps\setDirection 0
		coin.ps\setSpread 100
		coin.ps\setLinearAcceleration 0, 50, 0, 200
		coin.ps\setSpin 30, 60
		axel.particle\register "coin", coin