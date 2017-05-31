accessing
lastGeneration

	| currentGeneration |

	currentGeneration := self generateFirstGenerartion.

	[ context stoppingCriteria value: currentGeneration ]
		whileFalse: [ 
			context record: currentGeneration.
			currentGeneration := self nextGenerationBasedOn: currentGeneration ].
	context record: currentGeneration.
	^ currentGeneration