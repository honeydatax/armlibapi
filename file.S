main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str r3,var_sys_call
	mov r0,#2
	blx	r3
	ldr r3,var_sys_call
	mov r1,#var_hello
	add r1,r1,r3
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#0
	blx	r3
	ldr r3,var_sys_call
	mov r0,#1
	blx	r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
var_sys_call: .word 0
var_hello:    .byte "hello world",0,0,0,0,0
