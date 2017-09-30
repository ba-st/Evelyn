initialization
initializeWritingTo: aFileName mappingIndividualsWith: anIndividualMapper
	fileStream := FileStream forceNewFileNamed: aFileName.
	individualMapper := anIndividualMapper