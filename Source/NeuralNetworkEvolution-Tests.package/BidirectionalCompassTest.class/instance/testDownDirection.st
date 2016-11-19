test
testDownDirection

	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 2 y: 3))) equals: 0.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 1 y: 3))) equals: -0.25.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 1 y: 2))) equals: -0.5.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 1 y: 1))) equals: -0.75.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 2 y: 1))) equals: 1.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 3 y: 1))) equals: 0.75.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 3 y: 2))) equals: 0.5.
	self assert: (self angleOf: (self organismIn: (Position x: 2 y: 2) facing: Down new) to: (self foodIn: (Position x: 3 y: 3))) equals: 0.25