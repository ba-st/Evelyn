initialize - release
initializeNumber: aNumber composedOf: aCollectionOfIndividuals in: aContext

	number := aNumber.
	context := aContext.
	individuals :=
		(aCollectionOfIndividuals asSortedCollection: [:a :b |
			(context survivalCapacityOf: a) >= (context survivalCapacityOf: b)])
				asArray.

	context consider: self