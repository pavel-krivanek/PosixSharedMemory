instance creation
open: name

	id := LibPThread uniqueInstance privSemOpen: name oflag: (LibPThread uniqueInstance O_CREAT) mode: 8r664 value: 0.