accessing - private
safeName

	^ Character constantNames
		inject: name
		into:
			[ :currentSafeName :constantName | currentSafeName copyWithout: (Character perform: constantName) ]