processing - private
processAndRegister: aNumberOfActions of: anOrganism in: anEnvironment

	| evolution remainingActions |

	remainingActions := aNumberOfActions.
	evolution := OrderedCollection new
		add: anEnvironment visualSnapshot;
		yourself.

	[ (1 to: (remainingActions min: actionsTillRefill))
		do: [ :each | 
			anOrganism executeNextActionIn: anEnvironment.
			evolution add: anEnvironment visualSnapshot ].
	self replenishFoodIn: anEnvironment.
	(remainingActions := remainingActions - actionsTillRefill) > 0 ] whileTrue.
	fitnessRecord register: evolution asProgressOf: anOrganism