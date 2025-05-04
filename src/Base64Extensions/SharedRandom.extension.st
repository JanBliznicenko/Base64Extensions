Extension { #name : 'SharedRandom' }

{ #category : '*Base64Extensions' }
SharedRandom class >> base64StringOfSize: aSize [

	^ self globalGenerator nextBase64StringOfSize: aSize
]
