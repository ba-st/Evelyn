accessing - private
imageToDisplayFor: occupation

	occupation = 'Agent'
		ifTrue: [ ^ 'down' ].
	occupation = 'Exit'
		ifTrue: [ ^ 'irrelevant' ].
	^ 'blank'