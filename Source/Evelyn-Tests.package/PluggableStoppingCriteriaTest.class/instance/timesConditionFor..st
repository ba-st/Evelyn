accessing
timesConditionFor: aNumberOfTimes

	| iteration |

	iteration := 0.
	^ PluggableStoppingCriteria
		stoppingWhen: [ :generation | 
			iteration ~= aNumberOfTimes
				ifTrue: [ iteration := iteration + 1.
					false ]
				ifFalse: [ true ] ]