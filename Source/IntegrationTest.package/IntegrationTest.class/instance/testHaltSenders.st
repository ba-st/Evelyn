tests
testHaltSenders
	| sendersOfHalt allClasses |
	
	allClasses := self allClasses collect: [ :aClass | aClass name ].
	sendersOfHalt := (OrderedCollection withAll: #halt senders)
		select: [ :aMethod | allClasses includes: aMethod theNonMetaClassName ].
	self toTranscript: sendersOfHalt.
	self assert: sendersOfHalt isEmpty