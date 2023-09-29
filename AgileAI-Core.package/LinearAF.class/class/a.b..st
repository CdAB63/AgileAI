instance creation
a: aSlope b: anOffset

	| af |
	
	af := self new.
	af slope: aSlope.
	af offset: anOffset.
	^ af