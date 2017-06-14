baselines
setUpGroups: spec
	spec
		package: 'Evelyn' with: [ spec requires: #('Buoy') ];
		package: 'NumericFunction' with: [ spec requires: #('Evelyn') ];
		package: 'Evelyn-Tests' with: [ spec requires: #('Evelyn' 'NumericFunction') ];
		package: 'NumericFunction-Tests' with: [ spec requires: #('NumericFunction' 'Evelyn-Tests') ];
		package: 'IntegrationTest';
		package: 'DrinkMixer-Model' with: [ spec requires: 'Evelyn' ];
		package: 'DrinkMixer-Tests' with: [ spec requires: #('DrinkMixer-Model' 'Evelyn-Tests') ].
	spec
		group: 'Deployment' with: #('Evelyn');
		group: 'Development' with: #('Deployment' 'NumericFunction' 'Evelyn-Tests' 'NumericFunction-Tests' 'IntegrationTest' 'DrinkMixer-Model' 'DrinkMixer-Tests')