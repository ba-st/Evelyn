rendering - private
renderWindEffectDescriptionOn: aCanvas

	aCanvas fieldSet
		legend: 'Wind Effect';
		with: [ aCanvas
				strong: 'Agent moving Up';
				unorderedList: [ self render: 10 chanceOfMoving: 'Left' on: aCanvas ].
			aCanvas
				strong: 'Agent moving Down';
				unorderedList: [ self
						render: 10 chanceOfMoving: 'Left' on: aCanvas;
						render: 20 chanceOfMoving: 'Up' on: aCanvas ].
			aCanvas
				strong: 'Agent moving Left';
				unorderedList: [ self render: 10 chanceOfMoving: 'Up' on: aCanvas ].
			aCanvas
				strong: 'Agent moving Right';
				unorderedList: [ self
						render: 10 chanceOfMoving: 'Up' on: aCanvas;
						render: 20 chanceOfMoving: 'Left' on: aCanvas ] ]