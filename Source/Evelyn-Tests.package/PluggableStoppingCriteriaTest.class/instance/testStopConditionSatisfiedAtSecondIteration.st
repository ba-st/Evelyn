tests
testStopConditionSatisfiedAtSecondIteration
	"El test no esta bueno, pero la idea es asertar que se evalua el bloque de #whileNotSatisfiedDo:"

	| stoppingCriteria iterations |
	iterations := 0.
	stoppingCriteria := self timesCondition: 2.
	stoppingCriteria
		untilStoppingCriteriaIsMetDo: [ iterations := iterations + 1 ]
		workingOn: self contextWithSomeGeneration.
	self assert: iterations equals: 2