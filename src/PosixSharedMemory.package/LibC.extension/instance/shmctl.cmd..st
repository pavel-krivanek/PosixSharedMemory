*PosixSharedMemory
shmctl: shmid cmd: cmd 

	""

	| result buffer|
	
	buffer := ExternalAddress allocate: 86.
	[ 
		result := self privShmctl: shmid cmd: cmd buf: buffer.
	] ensure: [ buffer free ].
	result = -1 ifTrue: [ self riseLastError ].
	^ result