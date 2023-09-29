initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: aBias  learningRate: 0.1 activationFunction: SigmoidAF new ]).
	self learningRate: 0.1