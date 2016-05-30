*PosixSharedMemory-private memory
privShmctl: shmid cmd: cmd buf: buf

	^ self ffiCall: #(int shmctl(int shmid, int cmd, void * buf))