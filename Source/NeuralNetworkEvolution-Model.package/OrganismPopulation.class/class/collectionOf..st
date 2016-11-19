instance creation - private
collectionOf: aNumberOfOrganisms

	| builder organisms |

	builder := OrganismBuilder new.
	organisms := OrderedCollection new.
	aNumberOfOrganisms timesRepeat: [ organisms add: builder build ].
	^ organisms