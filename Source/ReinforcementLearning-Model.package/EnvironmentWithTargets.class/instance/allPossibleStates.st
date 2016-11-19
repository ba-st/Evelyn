accessing
allPossibleStates

	"Asumo que no va a modificarse el conjunto de objetivos. Primero se tienen que hacer todos los placePrize, y luego empezar a 	consultar estados."
	| statesInformation |
	statesInformation := targets inject: self initialStatesInformation
				into: [:currentInformation :target | self stateInformationBasedOn: currentInformation].

	^statesInformation collect: [:stateInformation | stateInformation asArray]