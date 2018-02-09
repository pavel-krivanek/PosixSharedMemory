list the named semaphores:
ls -al /dev/shm/sem.*|more

name := 'sem002'.
sem := LibPThread uniqueInstance privSemOpen: name oflag: (LibPThread uniqueInstance O_CREAT) mode: 8r664 value: 0.

LibPThread uniqueInstance privSemPost: sem.
LibPThread uniqueInstance privSemWait: sem.
LibPThread uniqueInstance privSemUnlink: name. 

LibPThread uniqueInstance privSemClose: sem. 

LibPThread uniqueInstance privSemUnlink: 'sem002'. 
