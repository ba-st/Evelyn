processing - private
process: aNumberOfActions

	worlds with: population members do: [ :world :organism | self process: aNumberOfActions of: organism in: world ]