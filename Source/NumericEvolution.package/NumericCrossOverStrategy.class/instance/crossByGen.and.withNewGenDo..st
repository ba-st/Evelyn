private - evaluating
crossByGen: parentA and: parentB withNewGenDo: aBlock
	parentA genotype with: parentB genotype do: [ :genA :genB | aBlock value: (self cross: genA with: genB) ]