private
privSemClose: semaphore

	^ self ffiCall: #(int sem_close(void * semaphore))