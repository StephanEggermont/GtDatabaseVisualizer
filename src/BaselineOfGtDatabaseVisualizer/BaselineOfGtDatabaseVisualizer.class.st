Class {
	#name : #BaselineOfGtDatabaseVisualizer,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtDatabaseVisualizer
}

{ #category : #baseline }
BaselineOfGtDatabaseVisualizer >> baseline: spec [
	<baseline>
	spec
		for: #common do: [ 
			spec baseline: 'P3' with: [ 
				spec repository: 'github://svenvc/P3:master' ].
			spec baseline: 'PharoOracleCallInterface' with: [ 
				spec repository: 'github://Ironirc/Pharo-Oracle-Call-Interface:main'].

			spec package: 'GtDatabaseVisualizer' ]
]
