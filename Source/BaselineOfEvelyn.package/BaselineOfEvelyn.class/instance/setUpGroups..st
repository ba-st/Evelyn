baselines
setUpGroups: spec
	spec
		package: 'Evelyn' with: [ spec requires: #('Buoy') ];
		package: 'NumericFunction' with: [ spec requires: #('Evelyn') ];
		package: 'Evelyn-Test' with: [ spec requires: #('Evelyn' 'NumericFunction') ];
		package: 'IntegrationTest';
		package: 'DrinkMixer-Model' with: [ spec requires: 'Evelyn' ];
		package: 'DrinkMixer-Tests' with: [ spec requires: 'DrinkMixer-Model' ].
	spec
		group: 'Deployment' with: #('Evelyn');
		group: 'Development' with: #('Deployment' 'NumericalFunction' 'Evelyn-Test' 'IntegrationTest' 'DrinkMixer-Tests')