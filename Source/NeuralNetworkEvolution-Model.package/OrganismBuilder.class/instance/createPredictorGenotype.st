organism building - private
createPredictorGenotype

	| genes |

	genes := OrderedCollection new.
	self numberOfPredictorGenes timesRepeat: [ genes add: self createGene ].
	^ Genotype basedOn: genes