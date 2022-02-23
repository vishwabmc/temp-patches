	.text
	.globl	sha256_compress
	.p2align	4
	.type	sha256_compress,@function
/* void sha256_compress(uint32_t state[8], const uint8_t block[64]) */
sha256_compress:
	lghi	%r0,2
	lgr	%r1,%r2
	lgr	%r2,%r3
	lghi	%r3,64
	kimd	%r0,%r2
	jo	.-4
	br	%r14
	.size	sha256_compress, .-sha256_compress
	.section	".note.GNU-stack","",@progbits
