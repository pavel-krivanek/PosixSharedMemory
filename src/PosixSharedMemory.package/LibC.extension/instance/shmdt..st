*PosixSharedMemory
shmdt: shmaddr
	^ self ffiCall: #(int shmdt(void * shmaddr))