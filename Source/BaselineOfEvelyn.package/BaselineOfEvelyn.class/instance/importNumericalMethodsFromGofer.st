baselines
importNumericalMethodsFromGofer
	Gofer it
		smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo40';
		configurationOf: 'NumericalMethods';
		load.
	((Smalltalk at: #ConfigurationOfNumericalMethods) project
		version: #stable)
		load: #('DHB');
		load: #('DhbExtensions')