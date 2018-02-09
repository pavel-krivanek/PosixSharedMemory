private
privSemPost: semaphore

	^ self ffiCall: #(int sem_post(void * semaphore))