organism building - private
createGenotype

	| genes |

	genes := OrderedCollection new.
	self numberOfGenes timesRepeat: [ genes add: self createGene ].
	^ Genotype basedOn: genes