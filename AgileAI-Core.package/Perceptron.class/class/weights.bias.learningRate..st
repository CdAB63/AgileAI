instance creation
weights: listOfWeights bias: aBias learningRate: aLearningRate

	| p |
	
	p := self new.
	p weights: listOfWeights.
	p bias: aBias.
	p learningRate: aLearningRate.
	^ p