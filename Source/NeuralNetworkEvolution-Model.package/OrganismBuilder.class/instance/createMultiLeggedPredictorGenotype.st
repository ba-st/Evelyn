organism building - private
createMultiLeggedPredictorGenotype

	| genes |

	genes := OrderedCollection new.
	self numberOfMultiLeggedPredictorGenes timesRepeat: [ genes add: self createGene ].
	^ Genotype basedOn: genes