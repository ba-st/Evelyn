rendering - private
renderTableFor: aSnapshot on: aCanvas

	aCanvas
		table: [ aSnapshot
				withRowsDo: [ :rowNumber | self renderRow: rowNumber of: aSnapshot on: aCanvas ] ]