accessing
mapping: aRoadMap
	^ String
		streamContents: [ :aStream | 
			aStream nextPutAll: 'Individual: '.
			aStream nextPutAll: '[ '.
			aStream nextPutAll: aRoadMap genotype asCommaString.
			aStream nextPutAll: ' ]'.
			aStream nextPutAll: ' - distance traveled: '.
			(self distanceTraveledBy: aRoadMap) printOn: aStream ]