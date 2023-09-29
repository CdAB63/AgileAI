instance creation
nbOfInputs: nbOfInputs hiddenLayers: nbrsOfNeurons nbOfOutputs: nbOfOutputs

	| nn |
	
	nn := self new.
	nn configure: nbOfInputs hiddenLayers: nbrsOfNeurons nbOfOutputs: nbOfOutputs.
	^ nn