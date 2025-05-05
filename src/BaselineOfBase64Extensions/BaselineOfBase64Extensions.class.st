Class {
	#name : 'BaselineOfBase64Extensions',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfBase64Extensions',
	#package : 'BaselineOfBase64Extensions'
}

{ #category : 'baselines' }
BaselineOfBase64Extensions >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'Base64Extensions'.
		spec group: 'default' with: #( 'Base64Extensions' ) ]
]
