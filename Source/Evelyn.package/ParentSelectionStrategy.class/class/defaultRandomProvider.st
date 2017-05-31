defaults
defaultRandomProvider
	"If alpha is too low, then no predilection is made for the best fitted individuals and the GA fail to reach an acceptable minimum.
	On the contrary, if alpha is excessively high, then no enough diversity will remain on each generation,
	 and the convergence process will be slowed down (see figure 6).
	 A compromise between this considerations is made, and the attractiveness parameter is settled to be alpha = 6 .
	Gimeno, Ricardo and Nave, Juan Miguel,Genetic Algorithm Estimation of Interest Rate Term Structure(December 11, 2006). Banco de Espana Research Paper No. WP-0634. Available at SSRN: http://ssrn.com/abstract=950982.
	-mtabacman"

	^DhbBetaDistribution shape: 1 shape: 6