tests
testComparison
	| buenosAires sameBuenosAires villaCarlosPaz sameVillaCarlosPaz |
	buenosAires := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	sameBuenosAires := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	villaCarlosPaz := City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002.
	sameVillaCarlosPaz := City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002.
	self assert: buenosAires equals: buenosAires.
	self assert: buenosAires equals: sameBuenosAires.
	self assert: villaCarlosPaz equals: villaCarlosPaz.
	self assert: villaCarlosPaz equals: sameVillaCarlosPaz.
	self deny: sameBuenosAires = villaCarlosPaz.
	self deny: villaCarlosPaz = sameBuenosAires