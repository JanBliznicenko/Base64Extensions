Extension { #name : 'Integer' }

{ #category : '*Base64Extensions' }
Integer >> asBase64String [
	self < 0
		ifTrue: [ ^ '-' , self negated asBase64String ].
	^ self asByteArray asBase64String
]
