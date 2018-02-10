accessing
at: index write: anArray

	| aByteArray source |
	
	aByteArray := anArray asByteArray pinInMemory; yourself.
	source := FFITypeArray fromHandle: aByteArray.
	writeMutex critical: [
		LibC memCopy: source getHandle to: (array getHandle + (index - 1)) size: anArray size ].
	writeMutex signal.
	^ aByteArray