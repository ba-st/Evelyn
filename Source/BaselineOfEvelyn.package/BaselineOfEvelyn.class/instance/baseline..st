baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Evolutionary-Model';
				package: 'FunctionGlobalOptima-Model' with: [ spec requires: #('Evolutionary-Model') ];
				package: 'DrinkMixer-Model' with: [ spec requires: 'Evolutionary-Model' ];
				package: 'NeuralNetworkEvolution-Model';
				package: 'NeuralNetworkEvolution-Web'
					with: [ spec requires: 'NeuralNetworkEvolution-Model' ];
				package: 'Neuroscience-Model';
				package: 'ReinforcementLearning-Model';
				package: 'ReinforcementLearning-Web' with: [ spec requires: 'ReinforcementLearning-Model' ];
				package: 'MemeticAlgorithms-Model';
				package: 'DrinkMixer-Tests' with: [ spec requires: 'DrinkMixer-Model' ];
				package: 'NeuralNetworkEvolution-Tests'
					with: [ spec requires: 'NeuralNetworkEvolution-Model' ];
				package: 'Neuroscience-Tests' with: [ spec requires: 'Neuroscience-Model' ];
				package: 'ReinforcementLearning-Tests'
					with: [ spec requires: 'ReinforcementLearning-Model' ];
				package: 'MemeticAlgorithms-Tests' with: [ spec requires: 'MemeticAlgorithms-Model' ].
			spec
				group: 'Deployment'
					with:
					#('MemeticAlgorithms-Model' 'ReinforcementLearning-Web' 'ReinforcementLearning-Model' 'Neuroscience-Model' 'NeuralNetworkEvolution-Web' 'NeuralNetworkEvolution-Model' 'DrinkMixer-Model' 'FunctionGlobalOptima-Model' 'Evolutionary-Model');
				group: 'Development'
					with:
					#('Deployment' 'MemeticAlgorithms-Tests' 'ReinforcementLearning-Tests' 'Neuroscience-Tests' 'NeuralNetworkEvolution-Tests' 'DrinkMixer-Tests');
				group: 'default' with: #('Deployment') ]