accessing
mapping: aRoadMap
	^ String
		streamContents: [ :aStream | 
			aStream nextPutAll: 'Record: RoadMap: '.
			aRoadMap genotype asArray printOn: aStream.
			aStream nextPutAll: ' - distance traveled: '.
			(self distanceTraveledBy: aRoadMap) printOn: aStream ]