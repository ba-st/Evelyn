baselines
setUpGroups: spec
	spec
		package: 'Evelyn' with: [ spec requires: #('Buoy') ];
		package: 'NumericEvolution' with: [ spec requires: #('Evelyn') ];
		package: 'Evelyn-Tests' with: [ spec requires: #('Evelyn' 'NumericEvolution') ];
		package: 'NumericEvolution-Tests'
			with: [ spec requires: #('NumericEvolution' 'Evelyn-Tests') ];
		package: 'IntegrationTest';
		package: 'TravelingSalesmanProblem' with: [ spec requires: #('Evelyn') ];
		package: 'TravelingSalesmanProblem-Tests'
			with: [ spec requires: #('TravelingSalesmanProblem' 'Evelyn-Tests') ].
	spec
		group: 'Deployment' with: #('Evelyn');
		group: 'Development'
			with:
			#('Deployment' 'NumericEvolution' 'Evelyn-Tests' 'NumericEvolution-Tests' 'IntegrationTest' 'TravelingSalesmanProblem' 'TravelingSalesmanProblem-Tests')