initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias learningRate: aLearningRate activationFunction: anActivationFunction using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: aBias  learningRate: aLearningRate activationFunction: anActivationFunction ]).
	self learningRate: aLearningRate