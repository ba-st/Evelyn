test
testIndividualCollectionIsDiscardedAfterCreation

	| individuals population |

	individuals := OrderedCollection new.
	individuals add: 3.
	individuals add: 7.
	population := IndividualPopulation composedOfAll: individuals.
	self assertCollection: population individuals asArray equals: #(3 7).

	individuals add: 1.
	individuals add: 9.
	self assertCollection: population individuals asArray equals: #(3 7).