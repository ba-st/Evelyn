instance creation
from: anOrderedCollection

	| stream |

	stream := WriteStream with: ''.
	(anOrderedCollection collect: [ :aNumber | aNumber asInteger asString ])
		do: [ :string | stream nextPutAll: string ].
	^Integer readFrom: stream contents base: 2.