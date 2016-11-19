organism building - private
createMultiLeggedOrganismGenotype

	| genes |

	genes := OrderedCollection new.
	self numberOfMultiLeggedOrganismGenes timesRepeat: [ genes add: self createGene ].
	^ Genotype basedOn: genes