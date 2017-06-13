initialization
initializeWriteOn: aFileName mappingIndividualsBy: anIndividualMapper
	fileStream := FileStream forceNewFileNamed: aFileName.
	individualMapper := anIndividualMapper