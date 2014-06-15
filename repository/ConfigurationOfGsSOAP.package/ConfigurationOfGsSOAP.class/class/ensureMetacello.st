private
ensureMetacello
	"Minimum package versions from which to boot Metacello. Corresponds to version 1.0-beta.6"

	Smalltalk at: #MetacelloProject ifAbsent: [
		Smalltalk at: #Gofer ifAbsent: [
			"Minimum version of Gofer from which to bootstrap"
			self bootstrapPackage: 'Gofer-lr.70' from: 'http://source.lukas-renggli.ch/flair' ].
		Smalltalk at: #Gofer ifPresent: [:gofer |
			gofer new
				url: 'http://seaside.gemstone.com/ss/metacello';
				addVersion: 'Metacello-Core-dkh.277'; "Minimum version from which to bootstrap Metacello"
				addVersion: 'Metacello-MC-dkh.209'; "Minimum version from which to bootstrap Metacello"
				addPackage: 'ConfigurationOfMetacello'; "Loads latest version of configuration package"
				load ].
		"load latest version of Metacello, load a specific version if desired"
		(Smalltalk at: #ConfigurationOfMetacello) loadLatestVersion ]