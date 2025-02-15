Class {
	#name : #DatabaseColumn,
	#superclass : #Object,
	#traits : 'TDatabaseEntity + TObjectHierarchy',
	#classTraits : 'TDatabaseEntity classTrait + TObjectHierarchy classTrait',
	#instVars : [
		'attributes',
		'table'
	],
	#category : #GtDatabaseVisualizer
}

{ #category : #accessing }
DatabaseColumn >> attributes [
	^ attributes ifNil: [ attributes := OrderedCollection new ]
]

{ #category : #accessing }
DatabaseColumn >> attributes: anObject [

	attributes := anObject
]

{ #category : #accessing }
DatabaseColumn >> getColumnAttributes [
	^ self getEntities
]

{ #category : #accessing }
DatabaseColumn >> hierarchyChildren [
	^ children ifNil: [ children := self attributes ]
]

{ #category : #accessing }
DatabaseColumn >> hierarchyParent [
	^ parent ifNil: [ parent := table ]
]

{ #category : #accessing }
DatabaseColumn >> printOn: aStream [
	aStream nextPutAll: self class name , '(' , name , ')'
]

{ #category : #accessing }
DatabaseColumn >> table [

	^ table
]

{ #category : #accessing }
DatabaseColumn >> table: anObject [

	table := anObject
]
