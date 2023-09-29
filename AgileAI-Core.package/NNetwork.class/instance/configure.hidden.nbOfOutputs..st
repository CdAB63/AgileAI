adding
configure: nbOfInputs hidden: nbOfNeurons nbOfOutputs: nbOfOutputs

	| random |
	
	random := Random seed: 42.
	
	self addLayer: (NeuronLayer nbOfNeurons: nbOfNeurons nbOfWeights: nbOfInputs using: random).
	self addLayer: (NeuronLayer nbOfNeurons: nbOfOutputs nbOfWeights: nbOfNeurons using: random).