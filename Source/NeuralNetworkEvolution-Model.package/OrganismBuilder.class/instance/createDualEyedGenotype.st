organism building - private
createDualEyedGenotype

	| genes |

	genes := OrderedCollection new.
	self numberOfDualEyedGenes timesRepeat: [ genes add: self createGene ].
	^ Genotype basedOn: genes