	.text
	.globl	sha512_compress
	.p2align	4
	.type	sha512_compress,@function
/* void sha512_compress(uint64_t state[8], const uint8_t block[128]) */
sha512_compress:
	lghi	%r0,3
	lgr	%r1,%r2
	lgr	%r2,%r3
	lghi	%r3,128
	kimd	%r0,%r2
	jo	.-4
	br	%r14
	.size	sha512_compress, .-sha512_compress
	.section	".note.GNU-stack","",@progbits
