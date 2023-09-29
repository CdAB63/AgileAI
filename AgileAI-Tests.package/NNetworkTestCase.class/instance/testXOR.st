tests
testXOR

	| n |
	
	n := NNetwork nbOfInputs: 2 hiddenLayers: #( 3 ) nbOfOutputs: 1.
	
	20000 timesRepeat: [ 
		n train: #(0 0) desiredOutputs: #(0).
		n train: #(0 1) desiredOutputs: #(1).
		n train: #(1 0) desiredOutputs: #(1).
		n train: #(1 1) desiredOutputs: #(0). ].
	
	self assert: (n feed: #(0 0)) first < 0.1.
	self assert: (n feed: #(0 1)) first > 0.9.
	self assert: (n feed: #(1 0)) first > 0.9.
	self assert: (n feed: #(1 1)) first < 0.1.