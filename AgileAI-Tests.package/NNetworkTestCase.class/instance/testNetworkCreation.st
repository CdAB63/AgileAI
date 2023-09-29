tests
testNetworkCreation

	| nn |
	
	nn := NNetwork nbOfInputs: 5 hiddenLayers: #(3 4 5 2) nbOfOutputs: 3.
	self assert: nn layers size equals: 5.
	self assert: nn layers first neurons size equals: 3.
	self assert: nn layers first neurons first weights size equals: 5.
	self assert: nn layers last neurons size equals: 3.
	self assert: nn layers last neurons first weights size equals: 2.