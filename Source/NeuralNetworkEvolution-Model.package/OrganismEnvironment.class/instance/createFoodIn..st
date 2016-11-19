occupants handling
createFoodIn: aPosition

	| newFoodSource |

	newFoodSource := Food new.
	self place: newFoodSource inPrepared: aPosition facing: Irrelevant new.
	foodSources add: newFoodSource