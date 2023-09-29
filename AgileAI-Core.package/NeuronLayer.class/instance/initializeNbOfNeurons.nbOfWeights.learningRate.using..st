initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights learningRate: aLearningRate using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: (random next * 4 - 2)  learningRate: aLearningRate activationFunction: SigmoidAF new ]).
	self learningRate: aLearningRate