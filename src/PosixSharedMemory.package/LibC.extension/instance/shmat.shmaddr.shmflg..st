*PosixSharedMemory
shmat: shmid shmaddr: shmaddr shmflg: shmflg

	"attaches the shared memory segment identified by shmid to the address space of the calling process. The attaching address is specified by shmaddr with one of the following criteria:
If shmaddr is NULL, the system chooses a suitable (unused) address at which to attach the segment.

	If shmaddr isn't NULL and SHM_RND is specified in shmflg, the attach occurs at the address equal to shmaddr rounded down to the nearest multiple of SHMLBA. Otherwise shmaddr must be a page-aligned address at which the attach occurs.

	If SHM_RDONLY is specified in shmflg, the segment is attached for reading and the process must have read permission for the segment. Otherwise the segment is attached for read and write and the process must have read and write permission for the segment. There is no notion of a write-only shared memory segment.
"

	| result |
	
	result := self privShmat: shmid shmaddr: shmaddr shmflg: shmflg.
	result = -1 ifTrue: [ self error ].
	^ result
	