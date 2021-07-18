main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr r0,lt1
	ldr r1,lt2
	ldr r2,lt3
	blx	r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
lt1: .word 1
lt2: .word 2
lt3: .word 3
