network building - private
convertLastHiddenLayerToOutputLayer

	| lastLayer |

	lastLayer := layers last.
	layers replaceAll: lastLayer with: (OutputLayer with: lastLayer neurons)