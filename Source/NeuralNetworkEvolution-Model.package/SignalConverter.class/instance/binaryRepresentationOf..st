converting - private
binaryRepresentationOf: anOutput

	^ (anOutput collect: [ :eachValue | self adjustToBinary: eachValue ]) asArray