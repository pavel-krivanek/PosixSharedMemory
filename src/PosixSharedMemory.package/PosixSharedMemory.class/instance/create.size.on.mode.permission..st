instance creation
create: aBoolean size: anInteger on: aFileReference mode: mode permission: permissions 

	| lib fid id flag | 

	lib := LibC uniqueInstance.
	
	size := anInteger.	
	flag := aBoolean 
		ifTrue: [ self createMask bitOr: permissions ]
		ifFalse: [ permissions ].

	fid := lib ftok: aFileReference fullName id: mode.
	id := lib shmget: fid size: anInteger flag: flag.
	handle := lib shmat: id shmaddr: 0 shmflg: 0.

	array := FFITypeArray fromHandle: handle getHandle type: #uchar size: anInteger.