accessing
at: index write: anArray

	| byteArray |
	byteArray := anArray asByteArray.	
	byteArray withIndexDo: [ :val :i |
		array at: index+i-1 put: val ].
	^ byteArray