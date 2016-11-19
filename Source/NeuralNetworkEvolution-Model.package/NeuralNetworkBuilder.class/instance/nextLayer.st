querying
nextLayer

	| layerToUse |

	layerToUse := nextLayer.
	nextLayer := HiddenLayer.
	^ layerToUse