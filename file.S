main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	bx	r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
