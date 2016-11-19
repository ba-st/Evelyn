accessing - private
exploringAction

	^actions
		at: ((randomNumberProvider random * actions size) ceiling min: actions size)