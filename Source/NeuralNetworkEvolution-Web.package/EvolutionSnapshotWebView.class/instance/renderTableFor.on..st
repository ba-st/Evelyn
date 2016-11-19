rendering - private
renderTableFor: snapshot on: aCanvas

	aCanvas
		table: [ snapshot
				withRowsDo:
					[ :rowNumber | self renderRow: rowNumber of: snapshot on: aCanvas ] ]