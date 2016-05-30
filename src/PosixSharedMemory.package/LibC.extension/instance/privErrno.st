*PosixSharedMemory-private
privErrno
	
	^ (ExternalAddress loadSymbol: #errno from: LibC) signedLongAt: 1