*PosixSharedMemory-private
privShmat: shmid shmaddr: shmaddr shmflg: shmflg

	^ self ffiCall: #(void * shmat(int shmid, ulong shmaddr, int shmflg))