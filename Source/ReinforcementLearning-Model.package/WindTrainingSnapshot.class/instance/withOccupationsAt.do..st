processing
withOccupationsAt: aRowNumber do: aBlock

	^ 1 to: worldSize do: [ :columnNumber | 
		| occupation |

		occupation := self occupationAt: columnNumber @ aRowNumber.
		aBlock value: occupation ]