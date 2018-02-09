baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		spec 
			package: 'PosixSharedMemory'.

		spec group: 'default' with: #('PosixSharedMemory').
	].		