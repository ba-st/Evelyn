instance creation - private
multiLeggedPredictorsCollectionOf: aNumberOfOrganisms

	| builder organisms |

	builder := OrganismBuilder new.
	organisms := OrderedCollection new.
	aNumberOfOrganisms timesRepeat: [ organisms add: builder buildMultiLeggedPredictor ].
	^ organisms