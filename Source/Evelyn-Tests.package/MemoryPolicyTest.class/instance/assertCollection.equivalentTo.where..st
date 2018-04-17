accessing
assertCollection: aMapperCollection equivalentTo: anotherMapperCollection where: assertionBlock
	self assert: aMapperCollection size equals: anotherMapperCollection size.
	aMapperCollection
		doWithIndex:
			[ :mapper :index | assertionBlock cull: mapper cull: (anotherMapperCollection at: index) ]