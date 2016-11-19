processing - private
cross: aFirstParent overWith: aSecondParent

	| mixedAlleles numberOfGenes |

	mixedAlleles := OrderedCollection new.
	numberOfGenes := aFirstParent numberOfGenes min: aSecondParent numberOfGenes.
	1 to: numberOfGenes do: [ :index | 
		| mixedAllele |

		mixedAllele := (aFirstParent alleleAt: index) * cuttingPoint + ((aSecondParent alleleAt: index) * (1 - cuttingPoint)).
		mixedAlleles add: mixedAllele ].

	^ Individual madeUpOf: mixedAlleles