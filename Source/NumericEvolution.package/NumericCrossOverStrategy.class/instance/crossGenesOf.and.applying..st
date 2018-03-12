private - evaluating
crossGenesOf: parentA and: parentB applying: aBlock
	parentA genotype with: parentB genotype do: [ :genA :genB | aBlock value: (self cross: genA with: genB) ]