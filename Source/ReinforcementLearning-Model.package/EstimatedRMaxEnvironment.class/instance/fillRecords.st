initialize-release
fillRecords

	states do: 
			[:state |
			values at: state put: self maximumValue.
			policy at: state put: actions first.
			actions do: 
					[:action |
					reinforcements at: state -> action put: EstimatedValue new.
					actionsTaken at: state -> action put: 0.
					qValues at: state -> action put: 0.
					states
						do: [:nextState | transitions at: state -> action -> nextState put: 0]]]