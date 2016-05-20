*PosixSharedMemory
shmget: key size: size flag: shmflg
	^ self ffiCall: #(int shmget(int key, ulong size, int shmflg))