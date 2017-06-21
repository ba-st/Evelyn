evaluating
distanceBetween: aCity and: anotherCity
	| theta lon1 lon2 lat1 lat2 dist |
	lon1 := aCity location y.
	lat1 := aCity location x.
	lon2 := anotherCity location y.
	lat2 := anotherCity location x.
	theta := lon1 - lon2.
	dist := (self deg2rad: lat1) sin * (self deg2rad: lat2) sin
		+ ((self deg2rad: lat1) cos * (self deg2rad: lat2) cos * (self deg2rad: theta) cos).
	dist := dist arcCos.
	dist := self rad2deg: dist.
	dist := dist * 60 * 1.1515.
	"distance is converted to km"
	^ dist * 1.609344