rendering - private
renderEvolutionFormOn: aCanvas

	aCanvas form
		with: [ aCanvas fieldSet
				legend: 'Parameters';
				with: [ aCanvas
						div: (LabeledWebView displaying: worldSizeView with: 'World Size ');
						div: (LabeledWebView displaying: discountRateView with: 'Discount ');
						div: (LabeledWebView displaying: seedView with: 'Random Seed ') ].
			aCanvas div: self runTrainingButton ]