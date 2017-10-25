instance creation
number: aNumber composedOf: sortedIndividuals
	AssertionCheckerBuilder new
		checking: [ :asserter | 
			asserter
				enforce: [ sortedIndividuals notEmpty ]
					because: 'Its makes no sense a generation without individuals';
				enforce: [ aNumber isZero not ]
					because: 'Its makes no sense a generation numbered 0';
				enforce: [ aNumber isInteger ]
					because: 'Its makes no sense a generation numbered with decimals';
				enforce: [ aNumber positive ]
					because: 'Its makes no sense a generation numbered with a negative number' ];
		raising: InstanceCreationFailed;
		buildAndCheck.
	^ self new initializeNumber: aNumber composedOf: sortedIndividuals