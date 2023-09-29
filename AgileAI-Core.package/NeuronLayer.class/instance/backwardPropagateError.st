operations
backwardPropagateError
	
	self neurons doWithIndex: [ :neuron :idx |
		| theError |
		theError := 0.0.
		self nextLayer neurons do: [ :nextNeuron |
			theError := theError + ((nextNeuron weights at: idx) * nextNeuron delta) ].
		neuron adjustDeltaWith: theError ].
	self previousLayer ifNotNil: [ 
		self previousLayer backwardPropagateError ]