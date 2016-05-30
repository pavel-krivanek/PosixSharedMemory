*PosixSharedMemory-private memory
privFtok: path id: id
	
	^ self ffiCall: #(int ftok(char * path, int id)).