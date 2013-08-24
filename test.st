Object subclass: Collection [

	"This is just some non-sense code..."

	<shape: IndexedShape>

	| tally |

	at: anInteger put: anObject [
		self at: anInteger put: anObject.
	]

	at: anInteger [
		<primitive: AtPrimitive>
	]

	do: aBlock [
		<symbolPragma:
			#symbol>
	]

	size [
		^tally
	]

	, aCollection [
		| collection |

		collection := self copy: tally + aCollection size.
		^collection
	]

	doesNotUnderStand: aMessage [
		aMessage selector == #msg ifTrue: [
			^nil].
	]

	literals [
		#(666 #symbol $c $<66> #'abc' 'abc').
		666 #symbol $c $<66> #'abc' 'abc'.
		'a
		b
		c'.
		#'
		a
		b
		c'.
		true. false. nil. thisContext.
	]

]
