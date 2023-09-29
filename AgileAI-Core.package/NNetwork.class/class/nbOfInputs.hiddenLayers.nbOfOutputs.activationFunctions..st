instance creation
nbOfInputs: nbOfInputs hiddenLayers: nbrsOfNeurons nbOfOutputs: nbOfOutputs activationFunctions: activationFunctions

	| nn |
	
	nn := self new.
	nn configure: nbOfInputs hiddenLayers: nbrsOfNeurons nbOfOutputs: nbOfOutputs activationFunctions: activationFunctions.
	^ nn