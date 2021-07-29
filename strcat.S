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
	ldr r1,newvars
	ldr r2,var_hellos
	mov r0,#34
	blx	r4
	ldr r4,var_sys_call
	ldr r1,newvars
	mov r0,#3
	blx	r4
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
var_sys_call: .word 0
var_hellos:   .word var_hello
var_hello:    .asciz "hello world\0"
var_helloss:   .word var_hello -var_hello
newvars:   .word newvar
newvar:    .asciz "hi there , \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"

