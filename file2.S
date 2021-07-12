main:
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r3, [fp, #-8]
	bx r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr

