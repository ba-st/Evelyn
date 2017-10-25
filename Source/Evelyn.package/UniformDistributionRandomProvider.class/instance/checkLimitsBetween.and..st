evaluating - private
checkLimitsBetween: aNumber and: anotherNumber
	^ (aNumber between: lowLimit and: highLimit) and: [ anotherNumber between: lowLimit and: highLimit ]