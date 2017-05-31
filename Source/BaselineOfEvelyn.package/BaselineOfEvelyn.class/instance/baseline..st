baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'NeuralNetworkEvolution-Model';
				package: 'NeuralNetworkEvolution-Web'
					with: [ spec requires: 'NeuralNetworkEvolution-Model' ];
				package: 'Neuroscience-Model';
				package: 'ReinforcementLearning-Model';
				package: 'ReinforcementLearning-Web' with: [ spec requires: 'ReinforcementLearning-Model' ];
				package: 'MemeticAlgorithms-Model';

				"Evelyn Core"
				
				package: 'Evelyn';
				package: 'Evelyn-Test' with: [ spec requires: #('Evelyn')];
				package: 'NumericFunction';
				package: 'IntegrationTest';
				package: 'DrinkMixer-Model' with: [ spec requires: 'Evelyn' ];
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
					#('Evelyn' 'NumericFunction' 'MemeticAlgorithms-Model' 'ReinforcementLearning-Web' 'ReinforcementLearning-Model' 'Neuroscience-Model' 'NeuralNetworkEvolution-Web' 'NeuralNetworkEvolution-Model' 'DrinkMixer-Model');
				group: 'Development'
					with:
					#('Deployment' 'Evelyn-Test' 'IntegrationTest' 'MemeticAlgorithms-Tests' 'ReinforcementLearning-Tests' 'Neuroscience-Tests' 'NeuralNetworkEvolution-Tests' 'DrinkMixer-Tests');
				group: 'default' with: #('Deployment') ]
