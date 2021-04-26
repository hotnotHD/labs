	.file	"statistics.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	statistics
	.type	statistics, @function
statistics:
	li	a5,1
	beq	a1,a5,.L2
	addi	a6,a0,4
	addiw	a1,a1,-2
	slli	a5,a1,32
	srli	a1,a5,30
	addi	a7,a0,8
	add	a7,a7,a1
	add	a1,a6,a1
	j	.L3
.L4:
	addi	a5,a5,4
	beq	a5,a1,.L7
.L5:
	lw	a4,0(a5)
	lw	a3,0(a6)
	bgeu	a3,a4,.L4
	lw	a3,4(a5)
	sw	a3,0(a5)
	sw	a4,4(a5)
	j	.L4
.L7:
	addi	a6,a6,4
	beq	a6,a7,.L2
.L3:
	mv	a5,a0
	j	.L5
.L2:
	slli	a5,a2,2
	add	a0,a0,a5
	lw	a0,0(a0)
	ret
	.size	statistics, .-statistics
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
