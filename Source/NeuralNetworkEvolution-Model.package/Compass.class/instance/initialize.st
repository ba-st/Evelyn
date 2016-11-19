initialize-release
initialize

	super initialize.
	directions := OrderedCollection new
		add: Up new;
		add: Left new;
		add: Down new;
		add: Right new;
		yourself