actions
allDeclaredNamespacePrefixes
	^ self attributesHolder declaredNamespacePrefixes
		ifNotEmptyDo: [:prefixes | prefixes]
		ifEmpty: [self parent ifNotNilDo: [:par | par declaredNamespacePrefixes]]