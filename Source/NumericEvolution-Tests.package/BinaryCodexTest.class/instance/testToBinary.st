tests
testToBinary
	| codex binary |
	codex := BinaryCodex new.
	binary := codex toBinary: 10.
	self assert: binary equals: #(0 0 0 0 0 0 1 0 1 0) asOrderedCollection