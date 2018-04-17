accessing
expectedRecordContents
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'Generation: 1';
				cr;
				nextPutAll: '	Record: NumericIndividual: 0 - #(0 0 0 0 0 0 0 0 0 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 538 - #(1 0 0 0 0 1 1 0 1 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 22 - #(0 0 0 0 0 1 0 1 1 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 853 - #(1 1 0 1 0 1 0 1 0 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 134 - #(0 0 1 0 0 0 0 1 1 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 895 - #(1 1 0 1 1 1 1 1 1 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 192 - #(0 0 1 1 0 0 0 0 0 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 731 - #(1 0 1 1 0 1 1 0 1 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 733 - #(1 0 1 1 0 1 1 1 0 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 755 - #(1 0 1 1 1 1 0 0 1 1)';
				cr;
				nextPutAll: '	';
				cr ]