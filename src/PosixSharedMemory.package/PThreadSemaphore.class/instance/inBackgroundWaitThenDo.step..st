operations
inBackgroundWaitThenDo: aBlock step: millisecondsCount
 
	[
		[ self tryWait ] 
			whileFalse: [ millisecondsCount milliSeconds wait ].
		aBlock value 
	] fork