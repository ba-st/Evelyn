building
create: aNumberOfFood foodSourcesIn: anEnvironment

	aNumberOfFood - anEnvironment remainingFoodSources timesRepeat: [ self createFoodIn: anEnvironment ]