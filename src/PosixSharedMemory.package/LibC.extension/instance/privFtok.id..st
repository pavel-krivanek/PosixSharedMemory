*PosixSharedMemory-private
privFtok: path id: id
	
	^ self ffiCall: #(int ftok(char * path, int id)).