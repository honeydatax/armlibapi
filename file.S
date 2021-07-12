main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4
	bx	r3
	mov r0,#0x0
	sub sp, fp, #4
	@ sp needed
	pop	{fp, pc}

