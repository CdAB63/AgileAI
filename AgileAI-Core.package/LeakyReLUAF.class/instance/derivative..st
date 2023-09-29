evaluation
derivative: output

	^ output > 0
			ifTrue: [ self slope1 ]
			ifFalse: [ self slope2 ]