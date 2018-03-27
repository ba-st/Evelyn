private
nextRandom

	"Gives a random between 0 and 1023.
	It uses 1023 of maximum because the binary representation is 10 bits "

	^ randomProvider next * 1023