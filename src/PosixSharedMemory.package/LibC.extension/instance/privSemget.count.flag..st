*PosixSharedMemory-private memory
privSemget: key count: nsems flag: semflg
	
	^ self ffiCall: #(int shmget(int key, int nsems, int semflg))