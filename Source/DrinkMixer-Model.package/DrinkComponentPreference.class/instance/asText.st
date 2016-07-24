converting
asText

	value = 5 ifTrue: [^'Very High'].
	value = 4 ifTrue: [^'High'].
	value = 3 ifTrue: [^'Medium'].
	value = 2 ifTrue: [^'Low'].
	value = 1 ifTrue: [^'Very Low']