accessing
copyFrom: startIndex to: endIndex

	| aByteArray destination arraySize |

	arraySize := endIndex - startIndex + 1.
	aByteArray := ByteArray ofSize: arraySize.
	aByteArray pinInMemory.
	
	destination := (FFITypeArray fromHandle: aByteArray) getHandle.
	LibC memCopy: (array getHandle + (startIndex - 1)) to: destination size: arraySize.
	^ aByteArray