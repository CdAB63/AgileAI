adding
configure: nbOfInputs hiddenLayers: nbrsOfNeurons nbOfOutputs: nbOfOutputs
	" generic n-depth ANN"
	| random prv |
	
	random := Random seed: 42.
	prv := nbOfInputs.
	
	nbrsOfNeurons do: [ :nbn |
		self addLayer: (NeuronLayer nbOfNeurons: nbn nbOfWeights: prv using: random).
		prv := nbn ].
	
	self addLayer: (NeuronLayer nbOfNeurons: nbOfOutputs nbOfWeights: prv using: random).
	"
	self addLayer: (NeuronLayer nbOfNeurons: nbOfNeurons1 nbOfWeights: nbOfInputs using: random).
	self addLayer: (NeuronLayer nbOfNeurons: nbOfNeurons2 nbOfWeights: nbOfNeurons1 using: random).
	self addLayer: (NeuronLayer nbOfNeurons: nbOfOutputs nbOfWeights: nbOfNeurons2 using: random).
	"