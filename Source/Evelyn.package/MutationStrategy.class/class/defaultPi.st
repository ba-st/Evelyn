defaults
defaultPi
	"Lower values of pi reduce the speed of convergence of the model,
	 since the optimization is mainly based on crossover slowing down the process, while if a high pi is settled, 
	mutation will be the dominant driver of the algorithm and there will be no sure convergence to an optimum (see figure 7).
	A compromise is reached for pi = 0.35.
	Gimeno, Ricardo and Nave, Juan Miguel,Genetic Algorithm Estimation of Interest Rate Term Structure(December 11, 2006). Banco de Espana Research Paper No. WP-0634. Available at SSRN: http://ssrn.com/abstract=950982.
	-mtabacman"

	^0.35