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
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#0
	blx	r3
	ldr r3,var_sys_call
	mov r0,#1
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#0
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#2
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#3
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#4
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#5
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#6
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#5
	mov r1,#7
	blx	r3
	ldr r3,var_sys_call
	ldr r1,var_hellos
	mov r0,#3
	blx	r3
	ldr r3,var_sys_call
	mov r0,#8
	mov r1,#0x12
	blx	r3
	ldr r3,var_sys_call
	mov r0,#9
	mov r1,#5
	blx	r3
	ldr r3,var_sys_call
	mov r0,#10
	mov r1,#0
	mov r2,#0
	blx	r3
	ldr r3,var_sys_call
	mov r1,#64
	mov r2,#48
	mov r0,#10
	mul r1,r3,r1
	mul r2,r3,r2
	mov r0,#11
	blx	r3
	ldr r3,var_sys_call
	mov r0,#7
	mov r1,#100
	mov r2,#100
	mul r1,r2,r1
	blx	r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
var_sys_call: .word 0
var_hellos:   .word var_hello
var_hello:    .asciz "hello world\0"
var_helloss:   .word var_hello -var_hello

