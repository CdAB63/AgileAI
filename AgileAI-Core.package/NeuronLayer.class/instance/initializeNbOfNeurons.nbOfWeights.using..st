initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: (random next * 4 - 2)  learningRate: 0.1 activationFunction: SigmoidAF new ]).
	self learningRate: 0.1