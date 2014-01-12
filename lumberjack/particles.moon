export class Particles
	@initialize: =>
		coin = Emitter "resource/coin_particle.png", 500
		coin.ps\setSpeed 5, 30
		--coin.ps\setSizes 1
		coin.ps\setColors 255, 255, 0, 255, 255, 0, 0, 0
		coin.ps\setEmitterLifetime 2
		coin.ps\setParticleLifetime 0.5
		coin.ps\setDirection 0
		coin.ps\setSpread math.pi * 2
		--coin.ps\setLinearAcceleration 0, 50, 0, 200
		--coin.ps\setSpin 30, 60
		axel.particle\register "coin", coin