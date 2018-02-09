private
privSemOpen: name oflag: oflag 

	^ self ffiCall: #(void * sem_open(char * name, int oflag))