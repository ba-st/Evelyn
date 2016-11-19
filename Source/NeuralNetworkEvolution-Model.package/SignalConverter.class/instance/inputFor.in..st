converting
inputFor: anOrganism in: anEnvironment

	^ OrderedCollection new
		addAll: (self actionInputFor: anOrganism);
		addAll: (self sensoryInputFor: anOrganism in: anEnvironment);
		yourself