operations
feed: someInputValues

	| someOutputs |
	
	someOutputs := neurons collect: [ :n | n feed: someInputValues ] as: Array.
	^ self isOutputLayer 
			ifTrue: [ someOutputs ]
			ifFalse: [ self nextLayer feed: someOutputs ]