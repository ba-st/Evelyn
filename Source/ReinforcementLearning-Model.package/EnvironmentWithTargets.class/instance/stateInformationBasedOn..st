accessing - private
stateInformationBasedOn: currentInformation

	| updatedInformation |
	updatedInformation := OrderedCollection new.
	currentInformation do: 
			[:stateInformation |
			updatedInformation
				add: ((OrderedCollection withAll: stateInformation)
							add: true;
							yourself);
				add: ((OrderedCollection withAll: stateInformation)
							add: false;
							yourself)].
	^updatedInformation