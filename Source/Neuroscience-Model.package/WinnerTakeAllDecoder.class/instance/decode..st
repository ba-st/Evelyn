computing
decode: aResponseCollection
	
	| higherResponse higherResponseIndex |
	higherResponse := aResponseCollection asSortedCollection last.
	higherResponseIndex := aResponseCollection indexOf: higherResponse.

	^(population neurons at: higherResponseIndex) preferredDirection