dashboard
viewLearningCurve

	| b ds |
	
	self assert: self errors notEmpty description: 'Should first train the network'.
	
	b := RTDoubleGrapher new.
	b extent: 500 @ 300.
	ds := RTData new.
	ds samplingIfMoreThan: 2000.
	ds noDot; connectColor: Color blue.
	ds points: (self errors collectWithIndex: [ :y :i | i -> y ]).
	ds x: #key.
	ds y: #value.
	ds dotShape rectangle color: Color blue.
	b add: ds.
	ds := RTData new.
	ds samplingIfMoreThan: 2000.
	ds noDot.
	ds connectColor: Color red.
	ds points: (self precisions collectWithIndex: [ :y :i | i -> y ]).
	ds x: #key.
	ds y: #value.
	ds dotShape rectangle color: Color red.
	b addRight: ds.
	b axisX noDecimal; title: 'EPOCH'.
	b axisY title: 'ERROR'.
	b axisYRight title: 'Precision'; color: Color red.
	^ b