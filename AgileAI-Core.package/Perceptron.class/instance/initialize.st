initialization
initialize 

	super initialize.
	self weights: OrderedCollection new.
	self bias: 0.
	self learningRate: 0.1.