release
release

	"stop serving shared memory"
	
	LibC uniqueInstance shmctl: shmid cmd: LibC uniqueInstance IPC_RMID.
	self detach.