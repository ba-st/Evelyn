Class {
	#name : #CityTest,
	#superclass : #TestCase,
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #tests }
CityTest >> testAccessing [
	| city |
	city := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	self
		assert: city name equals: 'Buenos Aires';
		assert: city location equals: -34.603722 @ -58.381592
]

{ #category : #tests }
CityTest >> testComparison [
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
]

{ #category : #tests }
CityTest >> testHash [
	self
		assert: (City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592) hash equals: 133837272;
		assert: (City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592) hash
			equals: (City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592) hash;
		assert: (City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002) hash equals: 91202316;
		assert: (City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002) hash
			equals: (City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002) hash
]

{ #category : #tests }
CityTest >> testPrintOn [
	| city printOfCity |
	city := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	printOfCity := String streamContents: [ :stream | city printOn: stream ].
	self assert: printOfCity equals: 'Buenos Aires'
]
