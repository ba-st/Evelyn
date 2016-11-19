evolving
allowAditionalMoves

	"Cuidado con el orden de los valores, no están como binarios crecientes!"

	actionCodes := Dictionary new
		at: #(0 0 0) put: StepRight;
		at: #(1 0 0) put: StepLeft;
		at: #(0 0 1) put: TurnRight;
		at: #(1 0 1) put: DoNothing;
		at: #(0 1 0) put: TurnLeft;
		at: #(1 1 0) put: TurnAround;
		at: #(0 1 1) put: MoveBackwards;
		at: #(1 1 1) put: MoveForward;
		yourself