*PosixSharedMemory
shmdt: shmaddr

	"shmdt() detaches the shared memory segment located at the address specified by shmaddr from the address space of the calling process. The to-be-detached segment must be currently attached with shmaddr equal to the value returned by the attaching shmat() call."

	| result |
	result := self privShmdt: shmaddr.
	result = -1 ifTrue: [ self error ].
	^ result