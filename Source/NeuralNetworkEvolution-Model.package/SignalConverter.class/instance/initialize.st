initialize-release
initialize

	actionCodes := Dictionary new
		at: #(0 0) put: DoNothing;
		at: #(0 1) put: TurnRight;
		at: #(1 0) put: TurnLeft;
		at: #(1 1) put: MoveForward;
		yourself