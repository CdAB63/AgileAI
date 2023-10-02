examples
irisDatasetExample

	| irisCSV irisData lines tLines n |
	irisCSV := (ZnEasy get:
		            'https://agileartificialintelligence.github.io/Datasets/iris.csv')
		           contents.
	lines := irisCSV lines.
	lines := lines allButFirst.
	lines do: [ :l |
		Transcript
			show: l;
			cr ].
	tLines := lines collect: [ :l |
		          | ss |
		          ss := l substrings: ','.
		          Transcript
			          show: l;
			          cr.
		          (ss allButLast collect: [ :w | w asNumber ])
		          , (Array with: ss last) ].
	irisData := tLines collect: [ :row |
		            | l |
		            row last = 'setosa' ifTrue: [ l := #( 0 ) ].
		            row last = 'versicolor' ifTrue: [ l := #( 1 ) ].
		            row last = 'virginica' ifTrue: [ l := #( 2 ) ].
		            row allButLast , l ].
	n := self nbOfInputs: 4 hiddenLayers: { 6 } nbOfOutputs: 3.
	n train: irisData nbEpochs: 1000.
	n viewLearningCurve open