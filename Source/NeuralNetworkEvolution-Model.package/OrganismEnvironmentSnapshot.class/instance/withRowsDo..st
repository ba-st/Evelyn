processing
withRowsDo: aBlock

	^ 1 to: height do: [ :rowNumber | aBlock value: rowNumber ]