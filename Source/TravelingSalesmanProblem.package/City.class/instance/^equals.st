accessing
= anObject
	^ self == anObject or: [ (anObject isA: City) and: [ anObject name = self name and: [ anObject location = self location ] ] ]