constants
createMask

	"fail if shared memory already exists"

	^ LibC uniqueInstance IPC_CREAT | LibC uniqueInstance IPC_EXCL