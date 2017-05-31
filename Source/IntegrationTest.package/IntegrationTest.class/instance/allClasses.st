tests
allClasses

	^ self allPackages
		inject: OrderedCollection new
		into: [ :res :packageName | 
			res
				addAll:
					((SystemNavigation new allClassesInPackageNamed: packageName)
						reject: [ :aClass | aClass name asString includesSubstring: 'Test' ]).
			res ]