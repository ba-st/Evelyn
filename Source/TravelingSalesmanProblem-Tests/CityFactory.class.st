Class {
	#name : #CityFactory,
	#superclass : #Object,
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #'factory methods' }
CityFactory >> aconcagua [
	^ City named: 'Aconcagua' locatedAt: -32.653179 @ -70.010864
]

{ #category : #'factory methods' }
CityFactory >> buenosAires [
	^ City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592
]

{ #category : #'factory methods' }
CityFactory >> sanCarlosDeBariloche [
	^ City named: 'San Carlos de Bariloche' locatedAt: -41.134258 @ -71.308525
]

{ #category : #'factory methods' }
CityFactory >> ushuaia [
	^ City named: 'Ushuaia'	locatedAt: -54.8019121 @ -68.30295109999997
]

{ #category : #'factory methods' }
CityFactory >> villaCarlosPaz [
	^ City named: 'Villa Carlos Paz' locatedAt: -31.4207828 @ -64.49921410000002
]
