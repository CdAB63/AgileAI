instance creation
weights: aListOfWeights bias: aBias activationFunction: anActivationFunction

	| n |
	
	n := self new.
	n weights: aListOfWeights.
	n bias: aBias.
	n activationFunction: anActivationFunction.
	^ n