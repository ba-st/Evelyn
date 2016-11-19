comparing
= anObject

	^ self == anObject or: [ self class = anObject class and: [ self angle = anObject angle and: [ self distance = anObject distance ] ] ]