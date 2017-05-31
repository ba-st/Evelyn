as yet unclassified
toBinary: anInteger

	^((anInteger printStringBase: 2) padLeftTo: 10 with: $0 )asOrderedCollection collect: [ :aCharacter | Integer readFrom: aCharacter asString ]