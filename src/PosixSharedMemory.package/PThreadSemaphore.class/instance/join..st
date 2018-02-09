instance creation
join: name

	id := LibPThread uniqueInstance privSemOpen: name oflag: (LibPThread uniqueInstance O_CREAT).