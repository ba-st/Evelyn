private - evaluating
crossGenesOf: parentA and: parentB applying: aBlock
	parentA genotype with: parentB genotype do: [ :geneA :geneB | aBlock value: (self cross: geneA with: geneB) ]