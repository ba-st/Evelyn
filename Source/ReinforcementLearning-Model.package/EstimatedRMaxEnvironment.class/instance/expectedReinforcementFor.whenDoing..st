accessing - private
expectedReinforcementFor: aState whenDoing: anAction

	^(self considersAsUnknown: aState whenDoing: anAction)
		ifTrue: [maximumReinforcement]
		ifFalse: [(reinforcements at: aState -> anAction) expectedValue]