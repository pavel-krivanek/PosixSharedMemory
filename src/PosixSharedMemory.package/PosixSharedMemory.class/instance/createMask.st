constants
createMask

	"value of IPC_CREAT for the current platform"

	^ LibC uniqueInstance IPC_CREAT | LibC uniqueInstance IPC_EXCL