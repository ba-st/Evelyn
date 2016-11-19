initialize-release
initializeNeurons
	
	neurons := (0 to: size - 1) collect: [:index | DecodingNeuron respondingWith: (self tuningCurveFor: index)]