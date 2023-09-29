instance creation
nWeights: nw bias: aBias

	| n r |
	
	r := Random seed: 42.
	
	n := self new.
	n weights: (r next: nw) asArray.
	n bias: aBias.
	^ n