tests
testToBinaryWhenItsEightySeven
	| codex binary |
	codex := BinaryCodex new.
	binary := codex toBinary: 87.
	self assert: binary equals: #(0 0 0 1 0 1 0 1 1 1) asOrderedCollection