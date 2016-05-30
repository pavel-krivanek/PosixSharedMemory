*PosixSharedMemory
riseLastError

	"rise error with description of the last LibC error"
	
	self error: (ZnUTF8Encoder new decodeBytes: (self privStrerror: self privErrno) asByteArray) 