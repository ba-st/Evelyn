tests
testStopConditionSatisfiedAtSecondIteration
	| stoppingCriteria iterations |
	iterations := 0.
	stoppingCriteria := self timesConditionFor: 2.
	stoppingCriteria untilStoppingCriteriaIsMetDo: [ iterations := iterations + 1 ] workingOn: self contextWithSomeGeneration.
	self assert: iterations equals: 2