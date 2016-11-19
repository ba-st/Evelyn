accessing
stateFor: anAgent

	| stateInformation |
	stateInformation := OrderedCollection with: (environment stateFor: anAgent).

	"Asumo que no va a modificarse el conjunto de objetivos. Primero se tienen que hacer todos los placePrize, y luego empezar a 	consultar estados."
	stateInformation
		addAll: (targets collect: [:target | environment containsPrizeAt: target]).
	
	^stateInformation asArray