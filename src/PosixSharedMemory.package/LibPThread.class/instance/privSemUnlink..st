private
privSemUnlink: name

	^ self ffiCall: #(int sem_unlink(char * name))