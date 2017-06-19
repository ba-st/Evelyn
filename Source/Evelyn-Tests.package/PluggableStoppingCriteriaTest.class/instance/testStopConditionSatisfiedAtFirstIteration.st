tests
testStopConditionSatisfiedAtFirstIteration
	"El test no esta bueno, pero la idea es asertar que se evalua el bloque de #whileNotSatisfiedDo:"

	| stoppingCriteria iterations |
	iterations := 0.
	stoppingCriteria := self timesCondition: 1.
	stoppingCriteria untilStoppingCriteriaIsMetDo: [ iterations := iterations + 1 ] workingOn: self contextWithSomeGeneration.
	self assert: iterations equals: 1