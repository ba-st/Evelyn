	| localRepository |

	"Take ownership"
	Author fullName: 'TeamEvelyn'.

	"Obtain Non-Github Repositories"

	UIManager default inform: 'Loading Numerical Methods'.
	#('NumericalMethods')
	do:
		[ :package | 
		Gofer it
			smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo40';
			configurationOf: package;
			load ].

	((Smalltalk at: #ConfigurationOfNumericalMethods) project version: #stable)
		load: #('DHB');
		load: #('DhbExtensions').

	UIManager default inform: 'Configuring Repositories'.

	localRepository := '/media/sf_Repos'.

	"Renoir"
	Metacello new
		baseline: 'RenoirSt';
		filetreeDirectory: ('<1s>/<2s>' expandMacrosWith: localRepository with: 'RenoirSt/source/');
		lock.

	"Buoy"
	Metacello new
		baseline: 'Buoy';
		filetreeDirectory: ('<1s>/<2s>' expandMacrosWith: localRepository with: 'Buoy/source/');
		lock.

	"Willow"
	Metacello new
		baseline: 'Willow';
		filetreeDirectory: ('<1s>/<2s>' expandMacrosWith: localRepository with: 'Willow/Packages/');
		onLock: [ :ex | ex honor ];
		lock;
		load: 'Development'.

	"Evelyn"
	UIManager default inform: 'Loading Evelyn'.
	Metacello new
		baseline: 'Evelyn';
		filetreeDirectory: ('<1s>/<2s>' expandMacrosWith: localRepository with: 'Evelyn/Source/');
		lock;
		load: 'Development'.

	"Mock for tests"
	Gofer it
   		smalltalkhubUser: 'dionisiy' project: 'Mocketry';
   		configurationOf: 'Mocketry';
   		loadStable.

	"Settings"
	PolymorphSystemSettings showDesktopLogo: false.
	BIConfigurableFormatter
		newLinesAfterMethodPattern: 2;
		newLinesAfterTemporaries: 2;
		retainBlankLinesBetweenStatements: true.
	NECPreferences
		popupShowAutomatic: false;
		caseSensitive: false.
	TaskbarMorph showWindowPreview: false.
	((Smalltalk at: #WAAdmin) perform: #applicationExceptionHandlingDefaults)
		at: #exceptionHandler
		put: (Smalltalk at: #WADebugErrorHandler).

	ExperimentFitnessRegistry instance reset; prepareForSampling.

	UIManager default inform: 'Done'.
