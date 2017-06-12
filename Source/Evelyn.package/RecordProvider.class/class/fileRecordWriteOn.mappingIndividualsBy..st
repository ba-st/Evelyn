as yet unclassified
fileRecordWriteOn: aFileName mappingIndividualsBy: anIndividualMapper
	^ PluggableRecord of: (FileRecordStrategy writeOn: aFileName) mappingIndividualsBy: anIndividualMapper