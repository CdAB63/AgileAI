tests
testTrainingOr

	| p |
	
	p := Perceptron weights: { -1 . -1 } bias: 2.
	self assert: p learningRate equals: 0.1.
	self assert: p bias equals: 2.
	self assert: p weights first equals: -1.
	self assert: p weights last equals: -1.
	self assert: p weights size equals: 2.
	
	80 timesRepeat: [  
		p train: #(0 0) desiredOutput: 0.
		p train: #(0 1) desiredOutput: 1.
		p train: #(1 0) desiredOutput: 1.
		p train: #(1 1) desiredOutput: 1 ].
		
	self assert: (p feed: #(0 0)) equals: 0.
	self assert: (p feed: #(0 1)) equals: 1.
	self assert: (p feed: #(1 0)) equals: 1.
	self assert: (p feed: #(1 1)) equals: 1.