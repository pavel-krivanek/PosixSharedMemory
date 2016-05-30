*PosixSharedMemory-private memory
privShmdt: shmaddr

	^ self ffiCall: #(int shmdt(void * shmaddr))