processing
actionWhenIn: aState of: anEnvironment

	^actions at: ((random next * actions size) ceiling min: actions size)