test - private
assert: result at: index representsCrossoverOf: population

	| expectedAllele obtainedAllele |

	obtainedAllele := (result individuals at: index) alleleAt: 1.
	expectedAllele := self
		expectedAlleleFrom: population
		whenCrossingAt: index
		with: index + 1.
	self assert: obtainedAllele equals: expectedAllele.

	obtainedAllele := (result individuals at: index + 1) alleleAt: 1.
	expectedAllele := self
		expectedAlleleFrom: population
		whenCrossingAt: index + 1
		with: index.
	^ self assert: obtainedAllele equals: expectedAllele