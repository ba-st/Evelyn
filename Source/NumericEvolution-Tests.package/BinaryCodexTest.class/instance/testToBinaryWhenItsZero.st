tests
testToBinaryWhenItsZero
	| codex binary |
	codex := BinaryCodex new.
	binary := codex toBinary: 0.
	self assert: binary equals: #(0 0 0 0 0 0 0 0 0 0) asOrderedCollection