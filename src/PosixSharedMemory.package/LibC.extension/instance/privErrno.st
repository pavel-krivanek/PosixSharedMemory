*PosixSharedMemory-private memory
privErrno
	
	^ (ExternalAddress loadSymbol: #errno from: LibC) signedLongAt: 1