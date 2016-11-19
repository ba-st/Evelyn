converting - private
sensoryInputFor: anOrganism in: anEnvironment

	| angleAndDistance |

	angleAndDistance := anEnvironment angleAndDistanceToFoodSourceNearest: anOrganism.
	^ OrderedCollection with: angleAndDistance angle with: angleAndDistance distance / anEnvironment maximumDistance