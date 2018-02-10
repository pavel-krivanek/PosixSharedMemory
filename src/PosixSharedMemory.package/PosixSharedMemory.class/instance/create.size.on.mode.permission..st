instance creation
create: aBoolean size: anInteger on: aFileReference mode: mode permission: permissions 

	| lib fid flag semaphoreName | 

	lib := LibC uniqueInstance.
	
	size := anInteger.	
	flag := aBoolean 
		ifTrue: [ self createMask bitOr: permissions ]
		ifFalse: [ permissions ].
		
	path := aFileReference fullName.
	semaphoreName := path, '-writeMutex'.
	writeMutex := aBoolean 
		ifTrue: [ PThreadSemaphore newForMutualExclusionNamed: semaphoreName ]
		ifFalse: [ PThreadSemaphore existingNamed: semaphoreName ].

	fid := lib ftok: path id: mode.
	shmid := lib shmget: fid size: anInteger flag: flag.
	handle := lib shmat: shmid shmaddr: 0 shmflg: 0.

	array := FFITypeArray fromHandle: handle getHandle type: #uchar size: anInteger.