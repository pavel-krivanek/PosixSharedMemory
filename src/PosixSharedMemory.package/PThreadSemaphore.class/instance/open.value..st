instance creation
open: aName value: anInteger

	name := aName.
	id := LibPThread uniqueInstance privSemOpen: aName oflag: (LibPThread uniqueInstance O_CREAT) mode: 8r664 value: anInteger.