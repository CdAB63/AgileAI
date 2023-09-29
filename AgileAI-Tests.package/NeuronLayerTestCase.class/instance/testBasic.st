tests
testBasic

	| nl result r |
	
	r := Random seed: 42.
	
	nl := NeuronLayer new.
	nl initializeNbOfNeurons: 3 nbOfWeights: 4 using: r.
	
	self assert: nl isOutputLayer.
	
	result := nl feed: #(1 2 3 4).
	
	self assert: result size equals: 3.