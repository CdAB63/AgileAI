operations
feed: inputs

	| z |
	
	z := (inputs with: self weights collect: [ :x :w | x * w ]) sum + self bias.
	^ z > 0 ifTrue: [ 1 ] ifFalse: [ 0 ]