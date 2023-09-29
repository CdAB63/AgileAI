adding
configure: nbOfInputs hiddenLayers: nbrsOfNeurons nbOfOutputs: nbOfOutputs activationFunctions: activationFunctions
	| random prv |
	
	random := Random seed: 42.
	prv := nbOfInputs.
	
	nbrsOfNeurons with: activationFunctions allButLast do: [ :nbn :af |
		self addLayer: (NeuronLayer nbOfNeurons: nbn nbOfWeights: prv activationFunction: af using: random).
		prv := nbn ].
	
	self addLayer: (NeuronLayer nbOfNeurons: nbOfOutputs nbOfWeights: prv activationFunction: activationFunctions last using: random).