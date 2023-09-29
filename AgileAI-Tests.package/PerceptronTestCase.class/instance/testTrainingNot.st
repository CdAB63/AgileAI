tests
testTrainingNot

	| p |
	
	p := Perceptron weights: { -1 } bias: 2.
	self assert: p learningRate equals: 0.1.
	self assert: p bias equals: 2.
	self assert: p weights first equals: -1.
	self assert: p weights size equals: 1.
	
	80 timesRepeat: [  
		p train: #(0) desiredOutput: 1.
		p train: #(1) desiredOutput: 0 ].
		
	self assert: (p feed: #(0)) equals: 1.
	self assert: (p feed: #(1)) equals: 0.