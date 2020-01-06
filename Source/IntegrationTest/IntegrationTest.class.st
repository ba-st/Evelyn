Class {
	#name : #IntegrationTest,
	#superclass : #TestCase,
	#category : 'IntegrationTest'
}

{ #category : #accessing }
IntegrationTest >> allClasses [
	^ self allPackages
		inject: OrderedCollection new
		into: [ :res :packageName | 
			res
				addAll:
					((SystemNavigation new allClassesInPackageNamed: packageName)
						reject: [ :aClass | aClass name asString includesSubstring: 'Test' ]).
			res ]
]

{ #category : #accessing }
IntegrationTest >> allPackages [
	^ OrderedCollection new
		add: 'Evelyn';
		add: 'NumericFunction';
		add: 'TravelingSalesmanProblem';
		yourself
]

{ #category : #accessing }
IntegrationTest >> checkMessagesOf: aClass [
	^ aClass methods select: [ :method | method senders isEmpty ]
]

{ #category : #tests }
IntegrationTest >> testAllImplementedMessageAreUsed [
	| classes messagesNotUsed |
	messagesNotUsed := OrderedCollection new.
	classes := self allClasses.
	classes do: [ :aClass | messagesNotUsed addAll: (self checkMessagesOf: aClass) ].
	self toTranscript: messagesNotUsed.
	self assert: messagesNotUsed isEmpty
]

{ #category : #tests }
IntegrationTest >> testHaltSenders [
	| sendersOfHalt allClasses |
	
	allClasses := self allClasses collect: [ :aClass | aClass name ].
	sendersOfHalt := (OrderedCollection withAll: #halt senders)
		select: [ :aMethod | allClasses includes: aMethod theNonMetaClassName ].
	self toTranscript: sendersOfHalt.
	self assert: sendersOfHalt isEmpty
]

{ #category : #tests }
IntegrationTest >> testToDoSenders [
	| senders allClasses |
	allClasses := self allClasses collect: [ :aClass | aClass name ].
	senders := (OrderedCollection withAll: #toDo: senders)
		addAll: #toDo senders;
		select: [ :aMethod | allClasses includes: aMethod theNonMetaClassName ].
	self toTranscript: senders.
	self assert: senders isEmpty
]

{ #category : #accessing }
IntegrationTest >> toTranscript: messagesNotUsed [
	| contents |
	contents := String
		streamContents: [ :aStream | 
			messagesNotUsed
				do: [ :message | 
					message printOn: aStream.
					aStream cr ] ].
	Transcript << contents
]
