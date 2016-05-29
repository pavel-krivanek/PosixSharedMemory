*PosixSharedMemory
shmctl: shmid cmd: cmd buf: buf

	""

	| result buffer|
	
	buffer := ExternalAddress allocate: 86.
	[ 
		result := self privShmctl: shmid cmd: cmd buf: buf.
	] ensure: [ buffer free ].
	result = -1 ifTrue: [ self error ].
	^ result