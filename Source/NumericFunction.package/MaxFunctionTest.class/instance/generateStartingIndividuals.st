initialization
generateStartingIndividuals

	| individuals |

	individuals := OrderedCollection new.

	10 timesRepeat: [ individuals add: NumericIndividualBuilder new build ].
	^ individuals