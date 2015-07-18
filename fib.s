	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5,r6,r7, lr}

	@pre
	mov r3 , #-1

	@sum
	mov r4 , #1

	@r5=i
	mov r5, #0 

	@result
	mov r7 , #1


 	@r6=r0	
	add r6 ,r0,#1

	cmp r5 , r0
	ble .L2


	pop {r3,r4,r5,r6,r7,pc}
 
.L2:
	add r4 , r3 , r7	
	mov r3 , r7
	mov r7 , r4
	add r5 ,#1
	cmp  r5 ,r6
	bne .L2
	cmp r5 ,r6
	beq .L3
	

	@ END CODE MODIFICATION
.L3:
	mov r0, r7			@ R0 = 0
	pop {r3, r4, r5,r6,r7, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
