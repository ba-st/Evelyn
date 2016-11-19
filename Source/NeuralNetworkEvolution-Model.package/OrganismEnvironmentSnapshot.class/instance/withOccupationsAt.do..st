processing
withOccupationsAt: aRowNumber do: aBlock

	^ 1 to: width do: [ :columnNumber | 
		| occupation |

		occupation := self occupationAt: (Position x: columnNumber y: aRowNumber).
		aBlock value: occupation ]