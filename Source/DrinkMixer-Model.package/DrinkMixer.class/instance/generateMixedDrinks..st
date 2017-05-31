initialization
generateMixedDrinks: aNumber

	| proposals |

	proposals := OrderedCollection new.

	aNumber timesRepeat: [ proposals add: (self proposalFor: components) ].

	^ proposals