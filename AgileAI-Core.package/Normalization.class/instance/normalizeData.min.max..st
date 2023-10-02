as yet unclassified
normalizeData: aCollectionOfTrainingDataWithExpectedOutput min: minimumValues max: maximumValues

	| nbOfColumns result mn mx |
	
	nbOfColumns := aCollectionOfTrainingDataWithExpectedOutput first size - 1.
	result := OrderedCollection new.
	
	aCollectionOfTrainingDataWithExpectedOutput do: [ :row |
		| t v |
		t := OrderedCollection new.
		1 to: nbOfColumns do: [ :index |
			v := row at: index.
			mn := minimumValues at: index.
			mx := maximumValues at: index.
			t add: ((v - mn) / (mx - mn)) asFloat ].
		t add: row last.
		result add: t asArray ].
	
	^ result asArray