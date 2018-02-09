private
privSemTryWait: semaphore

	^ self ffiCall: #(int sem_trywait(void * semaphore))