instance creation
nbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights activationFunction: anActivationFunction using: random

	| nl |
	
	nl := self new.
	nl initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights activationFunction: anActivationFunction using: random.
	^ nl