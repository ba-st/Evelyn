accessing
averagedResults

	| results |

	results := OrderedCollection new.
	1 to: registers first generations do: [ :index | self averageResultsOf: index in: results ].
	^ results