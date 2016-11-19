estimating - private
estimationFor: aStimulus
	
	| responses |
	responses := population neurons collect: [:each | each responseTo: aStimulus].

	^decoder decode: responses