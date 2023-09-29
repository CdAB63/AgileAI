instance creation
nbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights using: random

	| nl |
	
	nl := self new.
	nl initializeNbOfNeurons: nbOfNeurons nbOfWeights: nbOfWeights using: random.
	^ nl