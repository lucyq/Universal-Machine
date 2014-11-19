	.file	"bitpack.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	Bitpack_fitss
	.type	Bitpack_fitss, @function
Bitpack_fitss:
.LFB10:
	.file 1 "bitpack.c"
	.loc 1 54 0
	.cfi_startproc
.LVL0:
	.loc 1 55 0
	cmpl	$63, %esi
	.loc 1 56 0
	movl	$1, %eax
	.loc 1 55 0
	ja	.L2
	.loc 1 57 0
	movl	$64, %ecx
.LBB24:
.LBB25:
	.loc 1 19 0
	xorl	%eax, %eax
.LBE25:
.LBE24:
	.loc 1 57 0
	subl	%esi, %ecx
.LVL1:
.LBB27:
.LBB26:
	.loc 1 19 0
	cmpl	$64, %ecx
	je	.L3
.LVL2:
	.loc 1 22 0
	movq	%rdi, %rax
	salq	%cl, %rax
	sarq	%cl, %rax
.LVL3:
.L3:
.LBE26:
.LBE27:
	.loc 1 58 0
	cmpq	%rax, %rdi
	sete	%al
.LVL4:
.L2:
	.loc 1 59 0
	rep; ret
	.cfi_endproc
.LFE10:
	.size	Bitpack_fitss, .-Bitpack_fitss
	.p2align 4,,15
	.globl	Bitpack_fitsu
	.type	Bitpack_fitsu, @function
Bitpack_fitsu:
.LFB11:
	.loc 1 62 0
	.cfi_startproc
.LVL5:
	.loc 1 63 0
	cmpl	$63, %esi
	.loc 1 64 0
	movl	$1, %eax
	.loc 1 63 0
	ja	.L9
.LVL6:
.LBB28:
.LBB29:
	.loc 1 34 0
	movl	%esi, %ecx
	shrq	%cl, %rdi
.LVL7:
.LBE29:
.LBE28:
	.loc 1 66 0
	testq	%rdi, %rdi
	sete	%al
.LVL8:
.L9:
	.loc 1 67 0
	rep; ret
	.cfi_endproc
.LFE11:
	.size	Bitpack_fitsu, .-Bitpack_fitsu
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"bitpack.c"
	.text
	.p2align 4,,15
	.globl	Bitpack_gets
	.type	Bitpack_gets, @function
Bitpack_gets:
.LFB12:
	.loc 1 72 0
	.cfi_startproc
.LVL9:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 73 0
	xorl	%eax, %eax
	.loc 1 72 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 73 0
	testl	%esi, %esi
	je	.L12
	.loc 1 75 0
	leal	(%rsi,%rdx), %ebp
.LVL10:
	movq	%rdi, %r12
	.loc 1 76 0
	cmpl	$64, %ebp
	ja	.L23
.LVL11:
.L13:
	.loc 1 77 0
	movl	$64, %eax
	movl	%eax, %esi
	subl	%ebp, %eax
	subl	%ebx, %esi
.LBB30:
.LBB31:
	.loc 1 18 0
	cmpl	$64, %eax
.LBE31:
.LBE30:
	.loc 1 77 0
	movl	%eax, %ebp
.LVL12:
	movl	%esi, %ebx
.LVL13:
.LBB34:
.LBB32:
	.loc 1 18 0
	ja	.L24
	.loc 1 19 0
	movl	$0, %eax
.LVL14:
	je	.L16
.L15:
	.loc 1 22 0
	movl	%ebp, %ecx
	movq	%r12, %rax
	salq	%cl, %rax
	movl	%ebx, %ecx
	sarq	%cl, %rax
.L16:
.LVL15:
.LBE32:
.LBE34:
.LBB35:
.LBB36:
	.loc 1 42 0
	cmpl	$64, %ebx
	ja	.L25
.LVL16:
.L12:
.LBE36:
.LBE35:
	.loc 1 78 0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL17:
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
.LBB38:
.LBB37:
	.loc 1 42 0
	movl	$42, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
	movq	%rax, 8(%rsp)
	call	Except_raise
.LVL18:
	movq	8(%rsp), %rax
.LBE37:
.LBE38:
	.loc 1 78 0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL19:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL20:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL21:
	ret
.LVL22:
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
.LBB39:
.LBB33:
	.loc 1 18 0
	movl	$18, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
	call	Except_raise
.LVL23:
	jmp	.L15
.LVL24:
	.p2align 4,,10
	.p2align 3
.L23:
.LBE33:
.LBE39:
	.loc 1 76 0 discriminator 2
	movl	$76, %edx
.LVL25:
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
.LVL26:
	call	Except_raise
.LVL27:
	jmp	.L13
	.cfi_endproc
.LFE12:
	.size	Bitpack_gets, .-Bitpack_gets
	.p2align 4,,15
	.globl	Bitpack_getu
	.type	Bitpack_getu, @function
Bitpack_getu:
.LFB13:
	.loc 1 81 0
	.cfi_startproc
.LVL28:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.loc 1 82 0
	leal	(%rdx,%rsi), %ebx
.LVL29:
	.loc 1 81 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 83 0
	cmpl	$64, %ebx
	ja	.L39
.LVL30:
.L27:
	.loc 1 85 0
	movl	$64, %eax
	movl	%eax, %esi
	subl	%ebx, %eax
	subl	%ebp, %esi
.LBB40:
.LBB41:
	.loc 1 18 0
	cmpl	$64, %eax
.LBE41:
.LBE40:
	.loc 1 85 0
	movl	%eax, %ebx
.LVL31:
	movl	%esi, %ebp
.LVL32:
.LBB44:
.LBB42:
	.loc 1 18 0
	ja	.L40
	.loc 1 20 0
	movl	$0, %r12d
	.loc 1 19 0
	je	.L30
.LVL33:
.L29:
	.loc 1 22 0
	movl	%ebx, %ecx
	salq	%cl, %r13
.LVL34:
	movq	%r13, %r12
.L30:
.LVL35:
.LBE42:
.LBE44:
.LBB45:
.LBB46:
	.loc 1 30 0
	cmpl	$64, %ebp
	ja	.L41
	.loc 1 32 0
	movl	$0, %eax
	.loc 1 31 0
	je	.L33
.L32:
	.loc 1 34 0
	movq	%r12, %rax
	movl	%ebp, %ecx
	shrq	%cl, %rax
.L33:
.LBE46:
.LBE45:
	.loc 1 86 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL36:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL37:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL38:
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL39:
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
	.loc 1 83 0 discriminator 2
	movl	$83, %edx
.LVL40:
	movl	$.LC0, %esi
.LVL41:
	movl	$Assert_Failed, %edi
.LVL42:
	call	Except_raise
.LVL43:
	jmp	.L27
.LVL44:
	.p2align 4,,10
	.p2align 3
.L41:
.LBB48:
.LBB47:
	.loc 1 30 0
	movl	$30, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
	call	Except_raise
.LVL45:
	jmp	.L32
.LVL46:
	.p2align 4,,10
	.p2align 3
.L40:
.LBE47:
.LBE48:
.LBB49:
.LBB43:
	.loc 1 18 0
	movl	$18, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
	call	Except_raise
.LVL47:
	jmp	.L29
.LBE43:
.LBE49:
	.cfi_endproc
.LFE13:
	.size	Bitpack_getu, .-Bitpack_getu
	.p2align 4,,15
	.globl	Bitpack_newu
	.type	Bitpack_newu, @function
Bitpack_newu:
.LFB14:
	.loc 1 91 0
	.cfi_startproc
.LVL48:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 92 0
	leal	(%rdx,%rsi), %ebx
.LVL49:
	.loc 1 93 0
	cmpl	$64, %ebx
	ja	.L61
.LVL50:
.L43:
	.loc 1 94 0
	movl	%r13d, %esi
	movq	%r12, %rdi
	call	Bitpack_fitsu
.LVL51:
	testb	%al, %al
	je	.L62
.L44:
.LVL52:
.LBB50:
.LBB51:
	.loc 1 30 0
	cmpl	$64, %ebx
	ja	.L63
.LBE51:
.LBE50:
.LBB55:
.LBB56:
	.loc 1 20 0
	movl	$0, %r13d
.LVL53:
.LBE56:
.LBE55:
.LBB60:
.LBB52:
	.loc 1 31 0
	je	.L47
	.loc 1 34 0
	movq	%r14, %r13
	movl	%ebx, %ecx
	shrq	%cl, %r13
.LVL54:
.L46:
.LBE52:
.LBE60:
.LBB61:
.LBB57:
	.loc 1 22 0
	movl	%ebx, %ecx
	salq	%cl, %r13
.LVL55:
.L47:
.LBE57:
.LBE61:
	.loc 1 97 0
	movl	$64, %ebx
.LVL56:
	subl	%ebp, %ebx
.LVL57:
.LBB62:
.LBB63:
	.loc 1 18 0
	cmpl	$64, %ebx
	ja	.L64
.LBE63:
.LBE62:
.LBB67:
.LBB68:
	.loc 1 32 0
	movl	$0, %edx
.LBE68:
.LBE67:
.LBB72:
.LBB64:
	.loc 1 19 0
	je	.L51
	.loc 1 22 0
	movl	%ebx, %ecx
	salq	%cl, %r14
.LVL58:
.L50:
.LBE64:
.LBE72:
.LBB73:
.LBB69:
	.loc 1 34 0
	movq	%r14, %rdx
	movl	%ebx, %ecx
	shrq	%cl, %rdx
.LVL59:
.L51:
.LBE69:
.LBE73:
	.loc 1 99 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL60:
	.loc 1 98 0
	movq	%r12, %rax
	movl	%ebp, %ecx
	.loc 1 99 0
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL61:
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL62:
	.loc 1 98 0
	salq	%cl, %rax
.LVL63:
	.loc 1 97 0
	orq	%r13, %rax
	.loc 1 99 0
	popq	%r13
	.cfi_def_cfa_offset 16
	.loc 1 96 0
	orq	%rdx, %rax
	.loc 1 99 0
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL64:
	.p2align 4,,10
	.p2align 3
.L64:
	.cfi_restore_state
.LBB74:
.LBB65:
	.loc 1 18 0
	movl	$18, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
	call	Except_raise
.LVL65:
	.loc 1 22 0
	movl	%ebx, %ecx
.LBE65:
.LBE74:
.LBB75:
.LBB70:
	.loc 1 30 0
	movl	$30, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
.LBE70:
.LBE75:
.LBB76:
.LBB66:
	.loc 1 22 0
	salq	%cl, %r14
.LVL66:
.LBE66:
.LBE76:
.LBB77:
.LBB71:
	.loc 1 30 0
	call	Except_raise
.LVL67:
	jmp	.L50
.LVL68:
	.p2align 4,,10
	.p2align 3
.L63:
.LBE71:
.LBE77:
.LBB78:
.LBB53:
	movl	$30, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
	call	Except_raise
.LVL69:
	.loc 1 34 0
	movq	%r14, %r13
.LVL70:
	movl	%ebx, %ecx
.LBE53:
.LBE78:
.LBB79:
.LBB58:
	.loc 1 18 0
	movl	$18, %edx
	movl	$.LC0, %esi
	movl	$Assert_Failed, %edi
.LBE58:
.LBE79:
.LBB80:
.LBB54:
	.loc 1 34 0
	shrq	%cl, %r13
.LVL71:
.LBE54:
.LBE80:
.LBB81:
.LBB59:
	.loc 1 18 0
	call	Except_raise
.LVL72:
	jmp	.L46
.LVL73:
	.p2align 4,,10
	.p2align 3
.L62:
.LBE59:
.LBE81:
	.loc 1 95 0
	movl	$95, %edx
	movl	$.LC0, %esi
	movl	$Bitpack_Overflow, %edi
	call	Except_raise
.LVL74:
	jmp	.L44
.LVL75:
	.p2align 4,,10
	.p2align 3
.L61:
	.loc 1 93 0 discriminator 2
	movl	$93, %edx
.LVL76:
	movl	$.LC0, %esi
.LVL77:
	movl	$Assert_Failed, %edi
.LVL78:
	call	Except_raise
.LVL79:
	jmp	.L43
	.cfi_endproc
.LFE14:
	.size	Bitpack_newu, .-Bitpack_newu
	.p2align 4,,15
	.globl	Bitpack_news
	.type	Bitpack_news, @function
Bitpack_news:
.LFB15:
	.loc 1 103 0
	.cfi_startproc
.LVL80:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	.loc 1 104 0
	movq	%rcx, %rdi
.LVL81:
	.loc 1 103 0
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 104 0
	call	Bitpack_fitss
.LVL82:
	testb	%al, %al
	jne	.L66
	.loc 1 105 0
	movl	$105, %edx
	movl	$.LC0, %esi
	movl	$Bitpack_Overflow, %edi
	call	Except_raise
.LVL83:
.L66:
	.loc 1 107 0
	movl	%ebx, %esi
	movq	%rbp, %rdi
	xorl	%edx, %edx
	call	Bitpack_getu
.LVL84:
	.loc 1 108 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	.loc 1 107 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	.loc 1 108 0
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL85:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL86:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL87:
	.loc 1 107 0
	movl	%r13d, %edx
	movq	%rax, %rcx
	.loc 1 108 0
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL88:
	.loc 1 107 0
	jmp	Bitpack_newu
.LVL89:
	.cfi_endproc
.LFE15:
	.size	Bitpack_news, .-Bitpack_news
	.globl	Bitpack_Overflow
	.section	.rodata.str1.1
.LC1:
	.string	"Overflow packing bits"
	.data
	.align 8
	.type	Bitpack_Overflow, @object
	.size	Bitpack_Overflow, 8
Bitpack_Overflow:
	.quad	.LC1
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/sup/gcc-4.8.0/lib/gcc/x86_64-unknown-linux-gnu/4.8.0/include/stddef.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/sup/cii40//include/cii/except.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x98e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x38
	.long	0x74
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0xd4
	.long	0x74
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.byte	0x8d
	.long	0x4d
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0x8e
	.long	0x4d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.value	0x10f
	.long	0x239
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.value	0x110
	.long	0x3b
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x115
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.value	0x116
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x117
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.value	0x118
	.long	0xa5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.value	0x119
	.long	0xa5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.value	0x11a
	.long	0xa5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.value	0x11b
	.long	0xa5
	.byte	0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.value	0x11c
	.long	0xa5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.value	0x11e
	.long	0xa5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.value	0x11f
	.long	0xa5
	.byte	0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.value	0x120
	.long	0xa5
	.byte	0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.value	0x122
	.long	0x271
	.byte	0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.value	0x124
	.long	0x277
	.byte	0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.value	0x126
	.long	0x3b
	.byte	0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.value	0x12a
	.long	0x3b
	.byte	0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.value	0x12c
	.long	0x86
	.byte	0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.value	0x130
	.long	0x5b
	.byte	0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.value	0x131
	.long	0x2d
	.byte	0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.value	0x132
	.long	0x27d
	.byte	0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.value	0x136
	.long	0x28d
	.byte	0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.value	0x13f
	.long	0x91
	.byte	0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.value	0x148
	.long	0xa3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.value	0x149
	.long	0xa3
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.value	0x14a
	.long	0xa3
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.value	0x14b
	.long	0xa3
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.value	0x14c
	.long	0x7b
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5
	.value	0x14e
	.long	0x3b
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.value	0x150
	.long	0x293
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x5
	.byte	0xb4
	.uleb128 0xa
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.long	0x271
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xbb
	.long	0x271
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xbc
	.long	0x277
	.byte	0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xc0
	.long	0x3b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x240
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0xc
	.long	0xab
	.long	0x28d
	.uleb128 0xd
	.long	0x9c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x239
	.uleb128 0xc
	.long	0xab
	.long	0x2a3
	.uleb128 0xd
	.long	0x9c
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a9
	.uleb128 0xe
	.long	0xab
	.uleb128 0xa
	.long	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x6
	.long	0x2c7
	.uleb128 0xb
	.long	.LASF49
	.byte	0x6
	.byte	0x7
	.long	0x2a3
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x6
	.byte	0x8
	.long	0x2d8
	.uleb128 0xe
	.long	0x2c7
	.uleb128 0xf
	.string	"shl"
	.byte	0x1
	.byte	0x10
	.long	0x69
	.byte	0x3
	.long	0x304
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0x10
	.long	0x69
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x10
	.long	0x62
	.byte	0
	.uleb128 0xf
	.string	"sra"
	.byte	0x1
	.byte	0x28
	.long	0x42
	.byte	0x3
	.long	0x32b
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0x28
	.long	0x69
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x28
	.long	0x62
	.byte	0
	.uleb128 0xf
	.string	"shr"
	.byte	0x1
	.byte	0x1c
	.long	0x69
	.byte	0x3
	.long	0x352
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0x1c
	.long	0x69
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x1c
	.long	0x62
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.byte	0x35
	.long	0x3bd
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bd
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x35
	.long	0x42
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.byte	0x35
	.long	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.long	.LASF69
	.byte	0x1
	.byte	0x39
	.long	0x42
	.uleb128 0x15
	.long	0x2dd
	.quad	.LBB24
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x39
	.uleb128 0x16
	.long	0x2f8
	.long	.LLST0
	.uleb128 0x16
	.long	0x2ed
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF53
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x3d
	.long	0x3bd
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x3d
	.long	0x69
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.byte	0x3d
	.long	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x32b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x42
	.uleb128 0x16
	.long	0x346
	.long	.LLST3
	.uleb128 0x16
	.long	0x33b
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0x47
	.long	0x42
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x539
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0x47
	.long	0x69
	.long	.LLST5
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x47
	.long	0x62
	.long	.LLST6
	.uleb128 0x17
	.string	"lsb"
	.byte	0x1
	.byte	0x47
	.long	0x62
	.long	.LLST7
	.uleb128 0x1a
	.string	"hi"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.long	.LLST8
	.uleb128 0x1b
	.long	0x2dd
	.quad	.LBB30
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x4d
	.long	0x4d0
	.uleb128 0x16
	.long	0x2f8
	.long	.LLST9
	.uleb128 0x16
	.long	0x2ed
	.long	.LLST10
	.uleb128 0x1c
	.quad	.LVL23
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x304
	.quad	.LBB35
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x4d
	.long	0x517
	.uleb128 0x16
	.long	0x31f
	.long	.LLST11
	.uleb128 0x1e
	.long	0x314
	.uleb128 0x1c
	.quad	.LVL18
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL27
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x50
	.long	0x69
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x64b
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0x50
	.long	0x69
	.long	.LLST12
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x50
	.long	0x62
	.long	.LLST13
	.uleb128 0x17
	.string	"lsb"
	.byte	0x1
	.byte	0x50
	.long	0x62
	.long	.LLST14
	.uleb128 0x1a
	.string	"hi"
	.byte	0x1
	.byte	0x52
	.long	0x62
	.long	.LLST15
	.uleb128 0x1b
	.long	0x2dd
	.quad	.LBB40
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x55
	.long	0x5df
	.uleb128 0x16
	.long	0x2f8
	.long	.LLST16
	.uleb128 0x16
	.long	0x2ed
	.long	.LLST17
	.uleb128 0x1c
	.quad	.LVL47
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x32b
	.quad	.LBB45
	.long	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x55
	.long	0x629
	.uleb128 0x16
	.long	0x346
	.long	.LLST18
	.uleb128 0x16
	.long	0x33b
	.long	.LLST19
	.uleb128 0x1c
	.quad	.LVL45
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL43
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.byte	0x59
	.long	0x69
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x850
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0x59
	.long	0x69
	.long	.LLST20
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x59
	.long	0x62
	.long	.LLST21
	.uleb128 0x17
	.string	"lsb"
	.byte	0x1
	.byte	0x59
	.long	0x62
	.long	.LLST22
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.byte	0x5a
	.long	0x69
	.long	.LLST23
	.uleb128 0x1a
	.string	"hi"
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.long	.LLST24
	.uleb128 0x1b
	.long	0x32b
	.quad	.LBB50
	.long	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x60
	.long	0x700
	.uleb128 0x16
	.long	0x346
	.long	.LLST25
	.uleb128 0x16
	.long	0x33b
	.long	.LLST26
	.uleb128 0x1c
	.quad	.LVL69
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x2dd
	.quad	.LBB55
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x60
	.long	0x74a
	.uleb128 0x16
	.long	0x2f8
	.long	.LLST27
	.uleb128 0x16
	.long	0x2ed
	.long	.LLST28
	.uleb128 0x1c
	.quad	.LVL72
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x2dd
	.quad	.LBB62
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x61
	.long	0x794
	.uleb128 0x16
	.long	0x2f8
	.long	.LLST29
	.uleb128 0x16
	.long	0x2ed
	.long	.LLST30
	.uleb128 0x1c
	.quad	.LVL65
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x32b
	.quad	.LBB67
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x61
	.long	0x7de
	.uleb128 0x16
	.long	0x346
	.long	.LLST31
	.uleb128 0x16
	.long	0x33b
	.long	.LLST32
	.uleb128 0x1c
	.quad	.LVL67
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL51
	.long	0x3c4
	.long	0x7fc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL74
	.long	0x97a
	.long	0x82e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	Bitpack_Overflow
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x5f
	.byte	0
	.uleb128 0x1c
	.quad	.LVL79
	.long	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x65
	.long	0x69
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x944
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0x65
	.long	0x69
	.long	.LLST33
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x65
	.long	0x62
	.long	.LLST34
	.uleb128 0x17
	.string	"lsb"
	.byte	0x1
	.byte	0x65
	.long	0x62
	.long	.LLST35
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.byte	0x66
	.long	0x42
	.long	.LLST36
	.uleb128 0x1f
	.quad	.LVL82
	.long	0x352
	.long	0x8cb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL83
	.long	0x97a
	.long	0x8fd
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	Bitpack_Overflow
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.byte	0
	.uleb128 0x1f
	.quad	.LVL84
	.long	0x539
	.long	0x920
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.quad	.LVL89
	.long	0x64b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF61
	.byte	0x7
	.byte	0xa5
	.long	0x277
	.uleb128 0x21
	.long	.LASF62
	.byte	0x7
	.byte	0xa6
	.long	0x277
	.uleb128 0x21
	.long	.LASF63
	.byte	0x6
	.byte	0x14
	.long	0x2d8
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0xe
	.long	0x2c7
	.uleb128 0x9
	.byte	0x3
	.quad	Bitpack_Overflow
	.uleb128 0x23
	.long	.LASF70
	.byte	0x6
	.byte	0x15
	.uleb128 0x24
	.long	0x2d2
	.uleb128 0x24
	.long	0x2a3
	.uleb128 0x24
	.long	0x3b
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL26-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL13-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL11-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL25-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL10-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL17-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL20-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0xb
	.byte	0x8
	.byte	0x40
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-1-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL12-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL17-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL17-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x7
	.byte	0x8
	.byte	0x40
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL30-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL34-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL42-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL30-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL32-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL41-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL44-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL30-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL40-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL29-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL32-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL44-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL31-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL33-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL36-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xb
	.byte	0x8
	.byte	0x40
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL47-1-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL31-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL34-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x7
	.byte	0x8
	.byte	0x40
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL35-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL50-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL58-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL68-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL75-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL78-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL53-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL68-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL70-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL73-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL75-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL77-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL50-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL61-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL76-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL50-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL62-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL75-.Ltext0
	.quad	.LVL79-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL79-1-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL49-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL56-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL68-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL52-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL56-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL68-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL52-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL58-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL68-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL71-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL71-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL57-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x7
	.byte	0x8
	.byte	0x40
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL58-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL80-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL81-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL87-.Ltext0
	.quad	.LVL89-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL89-1-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL80-.Ltext0
	.quad	.LVL82-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL82-1-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL85-.Ltext0
	.quad	.LVL89-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL89-1-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL80-.Ltext0
	.quad	.LVL82-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL82-1-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL89-1-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL80-.Ltext0
	.quad	.LVL82-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL82-1-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL86-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB78-.Ltext0
	.quad	.LBE78-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF33:
	.string	"_shortbuf"
.LASF9:
	.string	"size_t"
.LASF7:
	.string	"uint64_t"
.LASF21:
	.string	"_IO_buf_base"
.LASF0:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF63:
	.string	"Assert_Failed"
.LASF16:
	.string	"_IO_read_end"
.LASF51:
	.string	"bits"
.LASF2:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF65:
	.string	"GNU C 4.8.0 -mtune=generic -march=x86-64 -g -O2 -std=c99"
.LASF70:
	.string	"Except_raise"
.LASF59:
	.string	"value"
.LASF44:
	.string	"_IO_marker"
.LASF61:
	.string	"stdin"
.LASF5:
	.string	"unsigned int"
.LASF8:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF46:
	.string	"_sbuf"
.LASF52:
	.string	"width"
.LASF54:
	.string	"Bitpack_fitss"
.LASF55:
	.string	"Bitpack_fitsu"
.LASF4:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF69:
	.string	"narrow"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF62:
	.string	"stdout"
.LASF12:
	.string	"sizetype"
.LASF67:
	.string	"/h/zqin01/Desktop/comp40/hw7"
.LASF50:
	.string	"word"
.LASF20:
	.string	"_IO_write_end"
.LASF68:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF60:
	.string	"Bitpack_news"
.LASF58:
	.string	"Bitpack_newu"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF53:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF49:
	.string	"reason"
.LASF66:
	.string	"bitpack.c"
.LASF13:
	.string	"char"
.LASF48:
	.string	"Except_T"
.LASF45:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF24:
	.string	"_IO_backup_base"
.LASF64:
	.string	"Bitpack_Overflow"
.LASF6:
	.string	"int64_t"
.LASF56:
	.string	"Bitpack_gets"
.LASF57:
	.string	"Bitpack_getu"
.LASF18:
	.string	"_IO_write_base"
	.ident	"GCC: (GNU) 4.8.0"
	.section	.note.GNU-stack,"",@progbits
