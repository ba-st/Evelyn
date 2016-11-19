test support
assertAllOf: adaptationEffects areExpectedAdaptationEffectsWithErrorLessThan: aTolerance
	
	| expectedAdaptationEffects |
	expectedAdaptationEffects := self expectedAdaptationEffects.

	adaptationEffects
		with: expectedAdaptationEffects
		do:
			[:obtained :expected | 
			| difference |
			difference := (obtained - expected) abs.
			self assert: difference < aTolerance]