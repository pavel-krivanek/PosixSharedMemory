*PosixSharedMemory
ftok: path id: id
	^ self ffiCall: #(int ftok(char * path, char id))