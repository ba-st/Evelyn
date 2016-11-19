initialize-release
initializeWith: anInteger by: anotherInteger ofInterestTo: aSelection

	actionConsequencesEvaluator := ActionConsequencesEvaluator for: self.
	occupations := OrderedCollection new.
	foodSources := OrderedCollection new.
	compass := Compass new.
	width := anInteger.
	height := anotherInteger.
	selection := aSelection