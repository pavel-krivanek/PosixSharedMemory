*PosixSharedMemory-private
privShmdt: shmaddr

	^ self ffiCall: #(int shmdt(void * shmaddr))