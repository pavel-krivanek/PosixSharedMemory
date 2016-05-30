*PosixSharedMemory-private memory
privStrerror: errnum

	^ self ffiCall: #(char * strerror(int errnum))