accessing - private
imageToDisplayFor: occupation

	^ occupation isEmpty
		ifTrue: [ 'blank' ]
		ifFalse: [ self imageToDisplayWhenOccupiedBy: occupation facing ]