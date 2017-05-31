tests
testToDoSenders

	| senders |

	senders := #toDo: senders
		remove: #testToDoSenders implementors first;
		yourself.
	self toTranscript: senders.

	self assert: senders isEmpty