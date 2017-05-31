accessing
toTranscript: messagesNotUsed

	| contents |

	contents := String
		streamContents: [ :aStream | 
			messagesNotUsed
				do: [ :message | 
					message printOn: aStream.
					aStream cr ] ].
	Transcript << contents