building
generationAfter: aGeneration

	| indivudals |

	indivudals := self successorsOf: aGeneration.

	^self generationAfter: aGeneration composedOf: indivudals