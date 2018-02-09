instance creation
unlink: aName

	^ LibPThread uniqueInstance privSemUnlink: aName. 