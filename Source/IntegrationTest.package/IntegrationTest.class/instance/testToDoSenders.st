tests
testToDoSenders
	| senders allClasses |
	allClasses := self allClasses collect: [ :aClass | aClass name ].
	senders := (OrderedCollection withAll: #toDo: senders)
		addAll: #toDo senders;
		select: [ :aMethod | allClasses includes: aMethod theNonMetaClassName ].
	self toTranscript: senders.
	self assert: senders isEmpty