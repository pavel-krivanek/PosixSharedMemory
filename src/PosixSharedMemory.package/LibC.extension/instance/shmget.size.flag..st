*PosixSharedMemory
shmget: key size: size flag: shmflg

	"returns the identifier of the shared memory segment associated with the value of the argument key. A new shared memory segment, with size equal to the value of size rounded up to a multiple of PAGE_SIZE, is created if key has the value IPC_PRIVATE or key isn't IPC_PRIVATE, no shared memory segment corresponding to key exists, and IPC_CREAT is specified in shmflg.

	If shmflg specifies both IPC_CREAT and IPC_EXCL and a shared memory segment already exists for key, then shmget() fails with errno set to EEXIST. (This is analogous to the effect of the combination O_CREAT | O_EXCL for open(2).)

IPC_CREAT
to create a new segment. If this flag is not used, then shmget() will find the segment associated with key and check to see if the user has permission to access the segment.

IPC_EXCL
used with IPC_CREAT to ensure failure if the segment already exists.
"

	| result |
	result := self privShmget: key size: size flag: shmflg.
	result = -1 ifTrue: [ self riseLastError ].
	^ result