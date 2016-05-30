*PosixSharedMemory
ftok: path id: id

	"convert a pathname and a project identifier to a System V IPC key.
	
	The ftok() function uses the identity of the file named by the given pathname (which must refer to an existing, accessible file) and the least significant 8 bits of proj_id (which must be nonzero) to generate a key_t type System V IPC key, suitable for use with msgget(2), semget(2), or shmget(2).

	The resulting value is the same for all pathnames that name the same file, when the same value of id is used.  The value returned should be different when the (simultaneously existing) files or the project IDs differ."
	
	| result |
	
	result := self privFtok: path id: id.
	(result = -1) ifTrue: [ self riseLastError ].
	^ result