instance creation
newForMutualExclusionNamed: aName

	^ self new
		open: aName value: 1;
		yourself