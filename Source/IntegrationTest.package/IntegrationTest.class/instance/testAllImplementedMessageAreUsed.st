tests
testAllImplementedMessageAreUsed

	| classes messagesNotUsed |

	messagesNotUsed := OrderedCollection new.
	classes := self allClasses.
	classes do: [ :aClass | messagesNotUsed addAll: (self checkMessagesOf: aClass) ].
	self toTranscript: messagesNotUsed.
	self assert: messagesNotUsed isEmpty