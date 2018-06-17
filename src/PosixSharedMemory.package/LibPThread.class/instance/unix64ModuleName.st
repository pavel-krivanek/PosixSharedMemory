accessing platform
unix64ModuleName
	"On different flavors of linux the path to library may differ
	depending on OS distro or whether system is 32 or 64 bit.
	Packages such as snapcraft can also change the path.
	Look in a number of known locations, or LD_LIBRARY_PATH."

	(#('/lib/x86_64-linux-gnu' '/usr/lib'),
			(((OSEnvironment current getEnv: 'LD_LIBRARY_PATH') ifNil: [ '' ]) substrings: ':'))
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libpthread.so.0'.
			libraryPath exists
				ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate libpthread library. Please check if it installed on your system'