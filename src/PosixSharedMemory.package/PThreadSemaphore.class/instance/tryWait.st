operations
tryWait

	| returnCode errno |
	
	returnCode := LibPThread uniqueInstance privSemTryWait: id.
	
	^ (returnCode = -1)
		ifTrue: [ 
			errno := LibC uniqueInstance privErrno.
			^ (errno = self EAGAIN)
				ifTrue: [ false ]
				ifFalse: [ self error: (ZnUTF8Encoder new decodeBytes: (self privStrerror: errno) asByteArray) ] ]
		ifFalse: [ true ]