instance creation
nbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias learningRate: aLearningRate using: random

	| nl |
	
	nl := self new.
	nl initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias learningRate: aLearningRate using: random.
	^ nl