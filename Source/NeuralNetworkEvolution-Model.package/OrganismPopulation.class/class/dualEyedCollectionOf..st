instance creation - private
dualEyedCollectionOf: aNumberOfOrganisms

	| builder organisms |

	builder := OrganismBuilder new.
	organisms := OrderedCollection new.
	aNumberOfOrganisms timesRepeat: [ organisms add: builder buildDualEyed ].
	^ organisms