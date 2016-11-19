comparing
= anObject

	^ self == anObject or: [ self class = anObject class and: [ self from = anObject from and: [ self to = anObject to and: [ self weight = anObject weight ] ] ] ]