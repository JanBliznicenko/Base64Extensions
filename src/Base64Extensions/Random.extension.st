Extension { #name : 'Random' }

{ #category : '*Base64Extensions' }
Random >> nextBase64StringOfSize: aSize [

	| fourBytes byteArray |
	fourBytes := ((64 ** aSize) bytesCount / 4) ceiling.
	byteArray := ByteArray streamContents: [ :stream |
		             fourBytes timesRepeat: [
			             | int |
			             int := (self nextInteger: 4294967296) - 1. "256 ** 4 = 4294967296"
			             1 to: int bytesCount by: 1 do: [ :digitIndex |
			             stream nextPut: (int byteAt: digitIndex) ] ] ].
	^ byteArray asBase64String first: aSize
]
