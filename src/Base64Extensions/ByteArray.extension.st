Extension { #name : 'ByteArray' }

{ #category : '*Base64Extensions' }
ByteArray >> asBase64String [

	^ ZnBase64Encoder new beForURLEncoding encode: self
]
