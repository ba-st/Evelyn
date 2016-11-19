instance creation - private
multiLeggedCollectionOf: aNumberOfOrganisms

	| builder organisms |

	builder := OrganismBuilder new.
	organisms := OrderedCollection new.
	aNumberOfOrganisms timesRepeat: [ organisms add: builder buildMultiLeggedOrganism ].
	^ organisms