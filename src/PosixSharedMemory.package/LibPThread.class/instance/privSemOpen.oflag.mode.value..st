private
privSemOpen: name oflag: oflag mode: mode value: value

	^ self ffiCall: #(void * sem_open(char * name, int oflag, int mode, uint value))