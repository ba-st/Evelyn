processing - private
processAndRegister: aNumberOfActions

	worlds with: population members do: [ :world :organism | self processAndRegister: aNumberOfActions of: organism in: world ]