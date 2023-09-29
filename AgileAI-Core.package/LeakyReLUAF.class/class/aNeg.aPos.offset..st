instance creation
aNeg: a1 aPos: a2 offset: anOffset

	| af |
	
	af := self new.
	af slope1: a2.
	af slope2: a1.
	af offset: anOffset.
	^ af