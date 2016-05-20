instance creation
create: aBoolean size: anInteger on: aFileReference 

	^ self create: aBoolean size: anInteger on: aFileReference mode: $x permission: 8r666 