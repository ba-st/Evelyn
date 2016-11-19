processing - private
increase: aRecord at: aKey

	| currentValue |
	currentValue := aRecord at: aKey.
	aRecord at: aKey put: currentValue + 1