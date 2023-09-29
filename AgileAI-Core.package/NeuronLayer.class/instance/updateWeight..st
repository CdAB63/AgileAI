operations
updateWeight: initialInputs

	| inputs |
	
	inputs := initialInputs.
	
	self neurons do: [ :n |
		n adjustWeightWithInputs: inputs.
		n adjustBias ].
	
	self nextLayer ifNotNil: [ 
		self nextLayer updateWeight ]