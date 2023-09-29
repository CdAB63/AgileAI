tests
testTrainingOr 
	
	| n |
	
	n := Neuron weights: { -1 . -1 } bias: 2.
	
	5000 timesRepeat: [ 
		n train: #(0 0) desiredOutput: 0.
		n train: #(0 1) desiredOutput: 1.
		n train: #(1 0) desiredOutput: 1.
		n train: #(1 1) desiredOutput: 1 ].
	
	self assert: ((n feed: #(0 0)) closeTo: 0 precision: 0.1).
	self assert: ((n feed: #(0 1)) closeTo: 1 precision: 0.1).
	self assert: ((n feed: #(1 0)) closeTo: 1 precision: 0.1).
	self assert: ((n feed: #(1 1)) closeTo: 1 precision: 0.1).