tests
testStopConditionSatisfiedAtFirstIteration
	"El test no esta bueno, pero la idea es asertar que se evalua el bloque de #whileNotSatisfiedDo:"

	| stoppingCriteria evaluated iterations |
	iterations := 0.
	stoppingCriteria := PluggableStoppingCriteria
		analyzingGenerationWith:
			(BlockBasedCondition
				resolveStopAfterEvaluate: [ :generation | 
					iterations ~= 0
						ifTrue: [ (iterations = iterations) + 1.
							true ]
						ifFalse: [ true ] ]).
	evaluated := false.
	stoppingCriteria whileNotSatisfiedDo: [ evaluated := true ] workingOn: self contextWithSomeGeneration.
	self assert: evaluated