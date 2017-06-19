converting
fromBinary: aCollectionOfBinary
	| string |
	string := String
		streamContents: [ :aStream | aCollectionOfBinary do: [ :binary | aStream nextPutAll: binary asInteger asString ] ].
	^ Integer readFrom: string base: 2