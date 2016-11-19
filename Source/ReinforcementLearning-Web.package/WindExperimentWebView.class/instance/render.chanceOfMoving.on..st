rendering - private
render: aPercentage chanceOfMoving: aDirection on: aCanvas

	aCanvas
		listItem: [ aCanvas
				emphasis: ('<1p>%%' expandMacrosWith: aPercentage);
				render: (': Agent moves <1s>' expandMacrosWith: aDirection) ]