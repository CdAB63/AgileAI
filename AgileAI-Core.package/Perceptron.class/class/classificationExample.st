examples
classificationExample

	| f p r anX anY designedOutput testPoints g d1 d2 |
	
	f := [ :x | (-2 * x) - 3 ].
	
	p := self weights: { 1 . 2 } bias: -1 learningRate: 0.1.
	
	r := Random new seed: 42.
	
	500 timesRepeat: [ 
		anX := (r nextInteger: 50) - 25.
		anY := (r nextInteger: 50) - 25.
		designedOutput := (f value: anX) >= anY ifTrue: [ 1 ] ifFalse: [ 0 ].
		p train: { anX . anY } desiredOutput: designedOutput ].
	
	testPoints := OrderedCollection new.
	2000 timesRepeat: [ 
		testPoints add: { ((r nextInteger: 50) - 25) . ((r nextInteger: 50) - 25) } ].
	
	g := RTGrapher new.
	d1 := RTData new.
	d1 dotShape color: [ :point | (p feed: point) > 0.5 ifTrue: [ Color red trans ] ifFalse: [ Color blue trans ] ].
	d1 points: testPoints.
	d1 x: #first.
	d1 y: #second.
	g add: d1.
	
	d2 := RTData new.
	d2 noDot.
	d2 connectColor: Color red.
	d2 points: (-15 to: 15 by: 0.1).
	d2 y: f.
	d2 x: #yourself.
	g add: d2.
	
	g open