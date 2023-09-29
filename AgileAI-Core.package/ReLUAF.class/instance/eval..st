evaluation
eval: z

	^ z > 0
			ifTrue: [ z * self slope + self offset ]
			ifFalse: [ self offset ]