export class Particles
	@initialize: =>
		coin = Emitter "resource/particle.png", 500
		coin.ps\setSpeed 5, 30
		coin.ps\setColors 255, 255, 0, 255, 255, 0, 0, 0
		coin.ps\setEmitterLifetime 2
		coin.ps\setParticleLifetime 0.5
		coin.ps\setDirection 0
		coin.ps\setSpread math.pi * 2
		axel.particle\register "coin", coin

		water = Emitter "resource/particle_filled.png", 20
		water.ps\setSpeed 30, 60
		water.ps\setColors 0, 127, 255, 255, 0, 127, 255, 0
		water.ps\setEmitterLifetime 2
		water.ps\setParticleLifetime 1
		water.ps\setLinearAcceleration 0, 150, 0, 150
		water.ps\setDirection -math.pi / 2
		water.ps\setSpread math.pi / 4
		water.blend = "alpha"
		axel.particle\register "water", water

		lava = Emitter "resource/particle_filled.png", 20
		lava.ps\setSpeed 30, 60
		lava.ps\setColors 225, 32, 32, 255, 225, 32, 32, 0
		lava.ps\setEmitterLifetime 2
		lava.ps\setParticleLifetime 1
		lava.ps\setLinearAcceleration 0, 150, 0, 150
		lava.ps\setDirection -math.pi / 2
		lava.ps\setSpread math.pi / 4
		lava.blend = "alpha"
		axel.particle\register "lava", lava