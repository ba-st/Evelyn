Class {
	#name : #BinaryCodexTest,
	#superclass : #TestCase,
	#category : 'NumericEvolution-Tests-Core'
}

{ #category : #tests }
BinaryCodexTest >> testFromBinary [
	| codex integer |
	codex := BinaryCodex new.
	integer := codex fromBinary: #(0 0 0 0 0 0 1 0 1 0).
	self assert: integer equals: 10
]

{ #category : #tests }
BinaryCodexTest >> testFromBinaryWhenItsEightySeven [
	| codex integer |
	codex := BinaryCodex new.
	integer := codex fromBinary: #(0 0 0 1 0 1 0 1 1 1).
	self assert: integer equals: 87
]

{ #category : #tests }
BinaryCodexTest >> testFromBinaryWhenItsZero [
	| codex integer |
	codex := BinaryCodex new.
	integer := codex fromBinary: #(0 0 0 0 0 0 0 0 0 0).
	self assert: integer equals: 0
]

{ #category : #tests }
BinaryCodexTest >> testToBinary [
	| codex binary |
	codex := BinaryCodex new.
	binary := codex toBinary: 10.
	self assert: binary equals: #(0 0 0 0 0 0 1 0 1 0) asOrderedCollection
]

{ #category : #tests }
BinaryCodexTest >> testToBinaryWhenItsEightySeven [
	| codex binary |
	codex := BinaryCodex new.
	binary := codex toBinary: 87.
	self assert: binary equals: #(0 0 0 1 0 1 0 1 1 1) asOrderedCollection
]

{ #category : #tests }
BinaryCodexTest >> testToBinaryWhenItsZero [
	| codex binary |
	codex := BinaryCodex new.
	binary := codex toBinary: 0.
	self assert: binary equals: #(0 0 0 0 0 0 0 0 0 0) asOrderedCollection
]
