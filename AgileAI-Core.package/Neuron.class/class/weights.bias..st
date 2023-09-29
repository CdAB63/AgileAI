instance creation
weights: aListOfWeights bias: aBias

	| n |
	
	n := self new.
	n weights: aListOfWeights.
	n bias: aBias.
	^ n