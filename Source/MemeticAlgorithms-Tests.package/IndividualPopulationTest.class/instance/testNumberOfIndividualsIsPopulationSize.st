test
testNumberOfIndividualsIsPopulationSize

	| population |

	population := IndividualPopulation composedOfAll: #(a b).
	self assert: population numberOfIndividuals equals: 2.

	population := IndividualPopulation composedOfAll: #(a c e g).
	self assert: population numberOfIndividuals equals: 4