instance creation
nWeights: nw bias: aBias learningRate: aLearningRate activationFunction: anActivationFunction

	| n r |
	
	r := Random seed: 42.
	
	n := self new.
	n weights: (r next: nw) asArray.
	n bias: aBias.
	n learningRate: aLearningRate.
	n activationFunction: anActivationFunction.
	^ n