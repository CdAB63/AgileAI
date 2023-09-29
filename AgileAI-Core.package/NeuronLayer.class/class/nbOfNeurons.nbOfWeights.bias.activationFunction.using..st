instance creation
nbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias activationFunction: anActivationFunction using: random

	| nl |
	
	nl := self new.
	nl initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights bias: aBias activationFunction: anActivationFunction using: random.
	^ nl