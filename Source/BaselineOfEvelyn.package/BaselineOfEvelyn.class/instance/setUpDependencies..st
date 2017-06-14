baselines
setUpDependencies: spec
	self importNumericalMethodsFromGofer.
	spec
		baseline: 'Buoy'
			with: [ spec repository: 'github://ba-st/Buoy:master/source' ];
		import: 'Buoy'