network building
buildUsing: aNetworkClass

	| network |

	layers size > 1
		ifFalse: [ self error: 'Minimum layer number is 2' ].
	remainingGenes hasRemainingGenes
		ifFalse: [ self error: 'There are still unused genes.' ].
	self convertLastHiddenLayerToOutputLayer.
	network := aNetworkClass with: layers createdBy: genotype.
	self initialize.
	^ network