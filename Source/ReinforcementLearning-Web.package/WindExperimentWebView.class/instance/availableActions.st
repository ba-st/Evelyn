accessing - private
availableActions

	^ OrderedCollection new
		add: (Action named: 'Move Up');
		add: (Action named: 'Move Down');
		add: (Action named: 'Move Left');
		add: (Action named: 'Move Right');
		yourself