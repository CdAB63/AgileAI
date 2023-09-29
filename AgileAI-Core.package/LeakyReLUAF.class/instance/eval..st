evaluation
eval: z

	^ z > 0
			ifTrue: [ self slope1 * z + self offset ]
			ifFalse: [ self slope2 * z + self offset ]