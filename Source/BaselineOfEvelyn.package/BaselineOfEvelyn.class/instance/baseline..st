baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				setUpDependencies: spec;
				setUpGroups: spec.
			spec group: 'default' with: #('Deployment') ]