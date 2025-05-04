Extension { #name : 'UUID' }

{ #category : '*Base64Extensions' }
UUID >> asBase64String [

	^ self uuidData asBase64String
]
