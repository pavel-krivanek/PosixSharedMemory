*PosixSharedMemory
semget: key count: nsems flag: shmflg

	""

	| result |
	result := self privSemget: key count: nsems flag: shmflg.
	result = -1 ifTrue: [ self riseLastError ].
	^ result