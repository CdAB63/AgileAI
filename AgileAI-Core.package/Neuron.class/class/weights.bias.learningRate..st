instance creation
weights: aListOfWeights bias: aBias learningRate: aLearningRate

	| n |
	
	n := self new.
	n weights: aListOfWeights.
	n bias: aBias.
	n learningRate: aLearningRate.
	^ n