processing
withRowsDo: aBlock

	^ 1 to: worldSize do: [ :rowNumber | aBlock value: rowNumber ]