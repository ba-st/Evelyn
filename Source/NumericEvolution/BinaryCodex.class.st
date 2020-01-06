Class {
	#name : #BinaryCodex,
	#superclass : #Object,
	#category : 'NumericEvolution-Core'
}

{ #category : #converting }
BinaryCodex >> fromBinary: aCollectionOfBinary [
	| string |
	string := String streamContents: [ :aStream | aCollectionOfBinary do: [ :binary | aStream nextPutAll: binary asInteger asString ] ].
	^ Integer readFrom: string base: 2
]

{ #category : #converting }
BinaryCodex >> toBinary: anInteger [
	^ ((anInteger printStringBase: 2) padLeftTo: 10 with: $0) asOrderedCollection collect: [ :aCharacter | Integer readFrom: aCharacter asString ]
]
