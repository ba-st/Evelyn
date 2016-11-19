test
testRightDirection

	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 3 y: 2))) equals: 0.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 3 y: 3))) equals: 0.125.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 2 y: 3))) equals: 0.25.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 1 y: 3))) equals: 0.375.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 1 y: 2))) equals: 0.5.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 1 y: 1))) equals: 0.625.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 2 y: 1))) equals: 0.75.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Right new) to: (self foodIn: (Position x: 3 y: 1))) equals: 0.875