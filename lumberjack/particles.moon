export class Particles
	@initialize: =>
		coin = Emitter "resource/coin_particle.png", 500
		coin.ps\setSpeed 5, 30
		coin.ps\setColors 255, 255, 0, 255, 255, 0, 0, 0
		coin.ps\setEmitterLifetime 2
		coin.ps\setParticleLifetime 0.5
		coin.ps\setDirection 0
		coin.ps\setSpread math.pi * 2
		axel.particle\register "coin", coin