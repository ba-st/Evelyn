baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Evolutionary-Model';
				package: 'FunctionGlobalOptima-Model'
					with: [ spec requires: #('Evolutionary-Model') ];
				package: 'DrinkMixer-Model' with: [ spec requires: 'Evolutionary-Model' ];
				package: 'DrinkMixer-Tests' with: [ spec requires: 'DrinkMixer-Model' ].
			spec
				group: 'Deployment'
					with: #('DrinkMixer-Model' 'FunctionGlobalOptima-Model' 'Evolutionary-Model');
				group: 'Development' with: #('Deployment' 'DrinkMixer-Tests');
				group: 'default' with: #('Deployment') ]