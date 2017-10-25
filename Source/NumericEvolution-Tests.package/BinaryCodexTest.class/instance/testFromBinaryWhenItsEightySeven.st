tests
testFromBinaryWhenItsEightySeven
	| codex integer |
	codex := BinaryCodex new.
	integer := codex fromBinary: #(0 0 0 1 0 1 0 1 1 1).
	self assert: integer equals: 87