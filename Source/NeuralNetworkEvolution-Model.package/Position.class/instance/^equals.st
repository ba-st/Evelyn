comparing
= anObject

	^ self == anObject or: [ self class = anObject class and: [ self x = anObject x and: [ self y = anObject y ] ] ]