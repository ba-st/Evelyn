processing - private
process: aNumberOfActions of: anOrganism in: anEnvironment

	| remainingActions |

	remainingActions := aNumberOfActions.

	[ (1 to: (remainingActions min: actionsTillRefill)) do: [ :each | anOrganism executeNextActionIn: anEnvironment ].
	self replenishFoodIn: anEnvironment.
	(remainingActions := remainingActions - actionsTillRefill) > 0 ] whileTrue