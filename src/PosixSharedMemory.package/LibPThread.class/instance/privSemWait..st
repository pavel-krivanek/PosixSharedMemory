private
privSemWait: semaphore

	^ self ffiCall: #(int sem_wait(void * semaphore))