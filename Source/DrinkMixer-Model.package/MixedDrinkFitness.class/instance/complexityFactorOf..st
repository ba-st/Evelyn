computing - private
complexityFactorOf: mixedDrink

	^((((mixedDrink proportions select: [:each | each > (5/100)]) size - 4) abs - 1
		max: 0) / 4)
			squared