evaluation
derivative: output

	^ output > 0
			ifTrue: [ self slope ]
			ifFalse: [ 0 ]