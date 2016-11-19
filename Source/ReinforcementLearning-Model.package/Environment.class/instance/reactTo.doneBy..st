processing
reactTo: anAction doneBy: anAgent

	| reinforcement |

	anAction executedIn: self by: anAgent.
	reinforcement := self reinforcementFor: anAgent.
	self updatePrizesAt: (grid locationOf: anAgent).

	^reinforcement