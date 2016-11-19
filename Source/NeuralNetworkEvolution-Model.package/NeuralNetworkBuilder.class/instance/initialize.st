initialize-release
initialize

	layers := OrderedCollection new.
	connections := OrderedCollection new.
	nextLayer := InputLayer.
	self use: nil	"Es importante que falle si se intenta construir una red sin especificar el genotipo."