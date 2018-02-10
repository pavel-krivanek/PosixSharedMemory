operations
critical: mutuallyExcludedBlock

	self wait.
	mutuallyExcludedBlock value.
	self signal.