training
train: train nbEpochs: nbEpochs

	| sumError outputs expectedOutput epochPrecision t normalizedTrain |
	
	normalizedTrain := Normalization new normalizeData: train.
	
	1 to: nbEpochs do: [ :epoch |
		sumError := 0.
		epochPrecision := 0.
		normalizedTrain do: [ :row |
			outputs := self feed: row allButLast.
			expectedOutput := (1 to: self numberOfOutputs) collect: [ :notUsed | 0 ].
			expectedOutput at: (row last) +  1 put: 1.
			(row last = (self predict: row allButLast)) ifTrue: [ epochPrecision := epochPrecision + 1 ].
			t := (1 to: expectedOutput size) collect: [ :i |
						((expectedOutput at: i) - (outputs at: i)) squared ].
			sumError := sumError + t sum.
			self backwardPropagateError: expectedOutput.
			self updateWeight: row allButLast ].
		self errors add: sumError.
		self precisions add: (epochPrecision / train size) asFloat ]