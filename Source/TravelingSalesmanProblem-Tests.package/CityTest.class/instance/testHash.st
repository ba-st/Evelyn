tests
testHash
	self
		assert: (City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592) hash equals: 133837272;
		assert: (City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592) hash
			equals: (City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592) hash;
		assert: (City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002) hash equals: 91202316;
		assert: (City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002) hash
			equals: (City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002) hash