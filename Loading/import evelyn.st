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

localRepository := '/home/mlinux/Documents/tip/'.

"Buoy"
	Metacello new
		baseline: 'Buoy';
		filetreeDirectory: ('<1s>/<2s>' expandMacrosWith: localRepository with: 'Buoy/source/');
		lock.

	"Willow"
	Metacello new
		baseline: 'Willow';
		filetreeDirectory: ('<1s>/<2s>' expandMacrosWith: localRepository with: 'Willow/source/');
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


	UIManager default inform: 'Done'.