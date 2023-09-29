adding
configure: nbOfInputs hidden: nbOfNeurons1 hidden: nbOfNeurons2 nbOfOutputs: nbOfOutputs

	| random |
	
	random := Random seed: 42.
	
	self addLayer: (NeuronLayer nbOfNeurons: nbOfNeurons1 nbOfWeights: nbOfInputs using: random).
	self addLayer: (NeuronLayer nbOfNeurons: nbOfNeurons2 nbOfWeights: nbOfNeurons1 using: random).
	self addLayer: (NeuronLayer nbOfNeurons: nbOfOutputs nbOfWeights: nbOfNeurons2 using: random).