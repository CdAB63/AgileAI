initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights activationFunction: anActivationFunction using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: (random next * 4 - 2)  learningRate: 0.1 activationFunction: anActivationFunction ]).
	self learningRate: 0.1