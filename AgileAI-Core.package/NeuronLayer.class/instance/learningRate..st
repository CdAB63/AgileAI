initialization
learningRate: aLearningRate

	self assert: [ self neurons notEmpty ] description: 'First fill the layer with the neurons'.
	learningRate := aLearningRate.
	self neurons do: [ :n | n learningRate: aLearningRate ]