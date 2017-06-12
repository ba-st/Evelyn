tests
testHaltSenders
	| sendersOfHalt classes |
	sendersOfHalt := #halt senders collect: [ :aClass | aClass className ].
	classes := IntegrationTest new allClasses collect: [ :aClass | aClass name ].
	self deny: (sendersOfHalt includesAnyOf: classes) 