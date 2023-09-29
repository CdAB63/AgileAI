operations
train: inputs desiredOutput: desiredOutput

	| diff |
	
	self output: (self feed: inputs).
	diff := desiredOutput - output.
	self delta: diff * (self activationFunction derivative: self output).
	
	inputs withIndexDo: [ :anInput :index | 
		self weights at: index put: ((self weights at: index) + (self learningRate * self delta * anInput)) ].
	
	self bias: self bias + (self learningRate * self delta)