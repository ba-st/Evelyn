information
providedRandom
	
	| p j f u |
	p := eRaisedToMinusLambda.
	j := 0.
	f := p.
	u := DhbUniformDistribution new random.
	[u > f]
		whileTrue:
			[j := j + 1.
			p := lambda * p / j.
			f := f + p].

	^j