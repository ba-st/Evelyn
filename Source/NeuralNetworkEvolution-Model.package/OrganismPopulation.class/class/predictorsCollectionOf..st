instance creation - private
predictorsCollectionOf: aNumberOfOrganisms

	| builder organisms |

	builder := OrganismBuilder new.
	organisms := OrderedCollection new.
	aNumberOfOrganisms timesRepeat: [ organisms add: builder buildPredictor ].
	^ organisms