"
Reference:  https://www.geodatasource.com/developers/java                                              
========

Comment on the website:
==================
  This routine calculates the distance between two points (given the     
  latitude/longitude of those points). It is being used to calculate     
  the distance between two locations using GeoDataSource (TM) prodducts  
                                                                         
  Definitions:                                                           
    South latitudes are negative, east longitudes are positive           
                                                                         
  Passed to function:                                                    
    lat1, lon1 = Latitude and Longitude of point 1 (in decimal degrees)  
    lat2, lon2 = Latitude and Longitude of point 2 (in decimal degrees)  
    unit = the unit you desire for results                               
           where: 'M' is statute miles (default)                         
                  'K' is kilometers                                      
                  'N' is nautical miles                                  
  Worldwide cities and other features databases with latitude longitude  
  are available at https://www.geodatasource.com                          
                                                                         
  For enquiries, please contact sales@geodatasource.com                  
                                                                         
  Official Web site: https://www.geodatasource.com                        
                                                                         
           GeoDataSource.com (C) All Rights Reserved 2017                
                                                                         
"
Class {
	#name : #DistanceCalculator,
	#superclass : #Object,
	#category : 'TravelingSalesmanProblem'
}

{ #category : #evaluating }
DistanceCalculator >> deg2rad: aNumber [
	^ aNumber * Float pi / 180.0
]

{ #category : #evaluating }
DistanceCalculator >> distanceBetween: aCity and: anotherCity [

	| theta lon1 lon2 lat1 lat2 dist |

	"For references to the function see class comments"
	lon1 := aCity location y.
	lat1 := aCity location x.
	lon2 := anotherCity location y.
	lat2 := anotherCity location x.
	theta := lon1 - lon2.
	dist := (self deg2rad: lat1) sin * (self deg2rad: lat2) sin + ((self deg2rad: lat1) cos * (self deg2rad: lat2) cos * (self deg2rad: theta) cos).
	dist := dist arcCos.
	dist := self rad2deg: dist.
	dist := dist * 60 * 1.1515.
	"distance is converted to km"
	^ dist * 1.609344
]

{ #category : #evaluating }
DistanceCalculator >> rad2deg: aNumber [
	^ aNumber * 180 / Float pi
]
