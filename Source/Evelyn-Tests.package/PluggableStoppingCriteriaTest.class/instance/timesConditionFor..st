accessing
timesConditionFor: times
	"This condition just satisfy the first time"

	| iteration |
	iteration := 0.
	^ PluggableStoppingCriteria
		stoppingWhen: [ :generation | 
			iteration ~= times
				ifTrue: [ iteration := iteration + 1.
					false ]
				ifFalse: [ true ] ]