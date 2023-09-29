initialization
initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias learningRate: aLearningRate using: random

	self neurons: ((1 to: nbOfNeurons) collect: [ :i |
		Neuron nWeights: nbOfWeights bias: aBias  learningRate: aLearningRate activationFunction: SigmoidAF new ]).
	self learningRate: aLearningRate