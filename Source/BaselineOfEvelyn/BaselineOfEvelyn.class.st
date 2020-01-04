Class {
	#name : #BaselineOfEvelyn,
	#superclass : #BaselineOf,
	#category : 'BaselineOfEvelyn'
}

{ #category : #baselines }
BaselineOfEvelyn >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self
				setUpDependencies: spec;
				setUpGroups: spec.
			spec group: 'default' with: #('Deployment') ]
]

{ #category : #baselines }
BaselineOfEvelyn >> importNumericalMethodsFromGofer [
	Gofer it
		smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo40';
		configurationOf: 'NumericalMethods';
		load.
	((Smalltalk at: #ConfigurationOfNumericalMethods) project
		version: #stable)
		load: #('DHB');
		load: #('DhbExtensions')
]

{ #category : #baselines }
BaselineOfEvelyn >> setUpDependencies: spec [
	self importNumericalMethodsFromGofer.
	spec
		baseline: 'Buoy'
			with: [ spec repository: 'github://ba-st/Buoy:master/source' ];
		import: 'Buoy'
]

{ #category : #baselines }
BaselineOfEvelyn >> setUpGroups: spec [
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
]
