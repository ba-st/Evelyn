learning - private
computeSensitivitiesFor: anErrorCollection

	| layerSensitivity |

	layerSensitivity := layers last predictorSensitivityFor: anErrorCollection.
	layers size - 1 to: 2 by: -1 do: [ :index | layerSensitivity := (layers at: index) predictorSensitivityFor: layerSensitivity ]