accessing
checkMessagesOf: aClass

	^ aClass methods select: [ :method | method senders isEmpty ]