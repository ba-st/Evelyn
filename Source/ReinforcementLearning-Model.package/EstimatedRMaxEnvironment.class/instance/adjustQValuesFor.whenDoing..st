processing - private
adjustQValuesFor: aState whenDoing: action

	| reinforcement nextStateValueSum qValue |

	reinforcement := self expectedReinforcementFor: aState whenDoing: action.
	nextStateValueSum := self nextStateValueSumFrom: aState whenDoing: action.
	qValue := reinforcement + (discountRate * nextStateValueSum).

	qValues at: aState -> action put: qValue