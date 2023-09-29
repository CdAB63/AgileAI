instance creation
weights: listOfWeights bias: aBias

	| p |
	
	p := self new.
	p weights: listOfWeights.
	p bias: aBias.
	^ p