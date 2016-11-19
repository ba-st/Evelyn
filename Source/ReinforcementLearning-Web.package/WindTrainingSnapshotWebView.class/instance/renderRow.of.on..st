rendering - private
renderRow: rowNumber of: snapshot on: aCanvas

	aCanvas
		tableRow: [ snapshot
				withOccupationsAt: rowNumber
				do: [ :occupation | aCanvas tableData: [ self renderImageFor: occupation on: aCanvas ] ] ]