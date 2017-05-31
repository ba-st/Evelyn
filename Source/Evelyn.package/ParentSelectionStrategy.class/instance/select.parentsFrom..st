selecting
select: aNumber parentsFrom: aCollectionOfIndividuals

	| selectedParents |

	selectedParents := OrderedCollection new.

	aNumber timesRepeat: [selectedParents add: (self selectParentFrom: aCollectionOfIndividuals)].

	^selectedParents