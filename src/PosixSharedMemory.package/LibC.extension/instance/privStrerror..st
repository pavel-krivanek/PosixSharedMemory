*PosixSharedMemory-private
privStrerror: errnum

	^ self ffiCall: #(char * strerror(int errnum))