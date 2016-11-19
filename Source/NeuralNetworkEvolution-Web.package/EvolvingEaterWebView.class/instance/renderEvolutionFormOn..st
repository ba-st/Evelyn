rendering - private
renderEvolutionFormOn: aCanvas

	aCanvas
		form: [ aCanvas fieldSet
				legend: 'Parameters';
				with: [ aCanvas
						div: (LabeledWebView displaying: actionsPerGenerationView with: 'Actions ');
						div: (LabeledWebView displaying: generationsView with: 'Generations ');
						div: (LabeledWebView displaying: offspringPerWinnerView with: 'Offspring ');
						div: (LabeledWebView displaying: winnersPerGenerationView with: 'Winners ');
						div: (LabeledWebView displaying: seedView with: 'Random Seed ') ].
			aCanvas div: self runEvolutionButton ]