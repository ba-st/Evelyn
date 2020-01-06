"
In the tests it is not possible to test the accessors of the object created because they are encapsulated
"
Class {
	#name : #EvolutionaryAlgorithmContextBuilderTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-Core'
}

{ #category : #accessing }
EvolutionaryAlgorithmContextBuilderTest >> crossOverStrategy [
	^ NumericCrossOverStrategy new
]

{ #category : #accessing }
EvolutionaryAlgorithmContextBuilderTest >> mutationStrategy [
	^ CoinFlipMutationStrategy
		generating: NumericIndividual
		applying: NumericMutator new
		with: (PercentageProbability of: 50)
		randomizedUsing: (NormalDistributionRandomProvider definedMu: 0 andSigma: 1)
]

{ #category : #accessing }
EvolutionaryAlgorithmContextBuilderTest >> parentStrategy [
	^ ParentSelectionStrategy new
]

{ #category : #accessing }
EvolutionaryAlgorithmContextBuilderTest >> record [
	^ NullPolicy new
]

{ #category : #accessing }
EvolutionaryAlgorithmContextBuilderTest >> stoppingCriteria [
	^ GenerationNumberStoppingCriteria stoppingAfter: 2
]

{ #category : #accessing }
EvolutionaryAlgorithmContextBuilderTest >> survivorStrategy [

	^ HighestNumbersSelection surviving: 40 / 100
]

{ #category : #tests }
EvolutionaryAlgorithmContextBuilderTest >> testBuildWithAllParameters [
	| context |
	self
		shouldnt: [ context := EvolutionaryAlgorithmContextBuilder new
				configureParentSelectionStrategyTo: self parentStrategy;
				configureStoppingCriteriaTo: self stoppingCriteria;
				configureRecordTo: self record;
				configureCrossOverStrategyTo: self crossOverStrategy;
				configureMutationStrategyTo: self mutationStrategy;
				configureSurvivorsSelectionStrategyTo: self survivorStrategy;
				build ]
		raise: InstanceCreationFailed.
	self assert: (context isA: EvolutionaryAlgorithmContext)
]

{ #category : #tests }
EvolutionaryAlgorithmContextBuilderTest >> testBuildWithMinimalConfiguration [
	| context |
	self
		shouldnt: [ context := EvolutionaryAlgorithmContextBuilder new
				configureCrossOverStrategyTo: self crossOverStrategy;
				configureMutationStrategyTo: self mutationStrategy;
				configureSurvivorsSelectionStrategyTo: self survivorStrategy;
				build ]
		raise: InstanceCreationFailed.
	self assert: (context isA: EvolutionaryAlgorithmContext)
]
