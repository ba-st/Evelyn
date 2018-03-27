tests
testFromBinaryWhenItsZero
	| codex integer |
	codex := BinaryCodex new.
	integer := codex fromBinary: #(0 0 0 0 0 0 0 0 0 0).
	self assert: integer equals: 0