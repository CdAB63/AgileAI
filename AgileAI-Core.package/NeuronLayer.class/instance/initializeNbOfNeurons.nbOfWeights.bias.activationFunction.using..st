initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias activationFunction: anActivationFunction using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: aBias  learningRate: 0.1 activationFunction: anActivationFunction ]).
	self learningRate: 0.1