"
Reference:  Göktürk Üçoluk (2002). Genetic Algorithm Solution of the TSP Avoiding Special Crossover and Mutation. Turquía: Department of Computer Engineering Middle East Technical University.

Link: http://user.ceng.metu.edu.tr/~ucoluk/research/publications/tsp.pdf 
"
Class {
	#name : #TravelingSalesmanSelectionStrategy,
	#superclass : #SurvivorsSelectionStrategy,
	#instVars : [
		'distanceCalculator',
		'survivalPercentage'
	],
	#category : 'TravelingSalesmanProblem'
}

{ #category : #'Instance Creation' }
TravelingSalesmanSelectionStrategy class >> surviving: aFraction [

	^ self new initializeSurviving: aFraction
]

{ #category : #sorting }
TravelingSalesmanSelectionStrategy >> distanceBetween: aCity and: anotherCity [

	^ distanceCalculator distanceBetween: aCity and: anotherCity
]

{ #category : #sorting }
TravelingSalesmanSelectionStrategy >> distanceTraveledBy: anIndividual [

	| totalDistance |

	totalDistance := 0.
	anIndividual genotype
		doWithIndex: [ :aCity :index | 
			| nextCity |

			nextCity := index = anIndividual genotype size
				ifTrue: [ anIndividual genotype at: 1 ]
				ifFalse: [ anIndividual genotype at: index + 1 ].
			totalDistance := totalDistance + (self distanceBetween: aCity and: nextCity) ].
	^ totalDistance
]

{ #category : #initialization }
TravelingSalesmanSelectionStrategy >> initializeSurviving: aFraction [

	survivalPercentage := aFraction.
	distanceCalculator := DistanceCalculator new
]

{ #category : #sorting }
TravelingSalesmanSelectionStrategy >> sortByFitness: aCollectionOfIndividuals [

	^ aCollectionOfIndividuals sort: [ :anIndividual :anotherIndividual | (self distanceTraveledBy: anIndividual) < (self distanceTraveledBy: anotherIndividual) ]
]

{ #category : #accessing }
TravelingSalesmanSelectionStrategy >> survivalPercentage [

	^ survivalPercentage
]
