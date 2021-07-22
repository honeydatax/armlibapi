main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str r3,var_sys_call
	mov r0,#4
	mov r1,#15
	mov r2,#5
	blx	r3
	ldr r3,var_sys_call
	mov r0,#2
	blx	r3
	ldr r4,var_sys_call
	ldr r1,var_a
	mov r0,#20
	blx	r4
	ldr r4,var_sys_call
	ldr r1,var_b
	mov r0,#20
	blx	r4
	ldr r4,var_sys_call
	ldr r1,var_a
	ldr r2,var_b
	mov r0,#23
	blx	r4
	mov r1,r0
	ldr r4,var_sys_call
	mov r0,#20
	blx	r4
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
var_sys_call: .word 0
var_a:		  .word 1024 
var_b:		  .word 2
var_c:		  .word 0
