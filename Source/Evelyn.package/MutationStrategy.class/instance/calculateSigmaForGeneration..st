building - private
calculateSigmaForGeneration: aGenerationNumber
	"Parameter sigma_t is settled for the first generation to be equal to the standard deviation used in equations 11 and 12.
	For the following generations the value is increased by a 2%.
	Gimeno, Ricardo and Nave, Juan Miguel,Genetic Algorithm Estimation of Interest Rate Term Structure(December 11, 2006). Banco de Espana Research Paper No. WP-0634. Available at SSRN: http://ssrn.com/abstract=950982.

	Asumo que aGenerationNumber empieza desde 1, y como quiero aumentar en 2% a partir de la segunda generación, le resto 1. 
	-mtabacman"

	^self sigma * (1 + ( ((aGenerationNumber - 1) * 2)))