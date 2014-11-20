	.file	"um.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Error: please specify one file\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"r"
.LC2:
	.string	"Error within file\n"
.LC3:
	.string	"Error: File does not contain "
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"correctly formatted instruction\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB30:
	.file 1 "um.c"
	.loc 1 441 0
	.cfi_startproc
.LVL0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
.LBB83:
.LBB84:
	.loc 1 154 0
	movl	$40, %edi
.LVL1:
.LBE84:
.LBE83:
	.loc 1 441 0
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
.LBB87:
.LBB85:
	.loc 1 154 0
	call	malloc
.LVL2:
	.loc 1 155 0
	movl	$4000, %edi
	.loc 1 154 0
	movq	%rax, %r13
.LVL3:
	.loc 1 155 0
	call	malloc
.LVL4:
	.loc 1 156 0
	movl	$8000, %edi
	.loc 1 155 0
	movq	%rax, 8(%rsp)
	movq	%rax, 0(%r13)
	.loc 1 156 0
	call	malloc
.LVL5:
	leaq	7992(%rax), %rdx
	movq	%rax, 16(%rsp)
	movq	%rax, 16(%r13)
	.loc 1 158 0
	movl	$1000, 8(%r13)
.LVL6:
	movl	$200, %ecx
.LVL7:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 163 0
	movq	$0, (%rdx)
.LVL8:
	.loc 1 164 0
	movq	$0, -8(%rdx)
.LVL9:
	subq	$40, %rdx
	.loc 1 165 0
	movq	$0, 24(%rdx)
.LVL10:
	.loc 1 166 0
	movq	$0, 16(%rdx)
.LVL11:
	.loc 1 167 0
	movq	$0, 8(%rdx)
	.loc 1 162 0
	subl	$1, %ecx
.LVL12:
	jne	.L3
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	leaq	3996(%rax), %rcx
.LVL13:
	.p2align 4,,10
	.p2align 3
.L5:
	leal	2(%rdx), %r8d
	.loc 1 173 0
	movl	%edx, (%rcx)
.LVL14:
	leal	1(%rdx), %eax
	subq	$20, %rcx
	movl	%r8d, 12(%rcx)
	leal	3(%rdx), %r8d
.LVL15:
	.loc 1 177 0
	addl	$5, %edx
.LVL16:
	movl	%eax, 16(%rcx)
.LVL17:
	movl	%r8d, 8(%rcx)
.LVL18:
	leal	-1(%rdx), %r8d
	movl	%r8d, 4(%rcx)
	.loc 1 172 0
	cmpl	$1000, %edx
	jne	.L5
.LBE85:
.LBE87:
.LBB88:
.LBB89:
	.loc 1 458 0
	cmpl	$2, %r12d
.LBE89:
.LBE88:
.LBB104:
.LBB86:
	.loc 1 180 0
	movl	$1000, 32(%r13)
.LBE86:
.LBE104:
	.loc 1 446 0
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
.LVL19:
.LBB105:
.LBB102:
	.loc 1 458 0
	jne	.L78
	.loc 1 464 0
	movq	8(%r14), %rdi
	movl	$.LC1, %esi
	call	fopen
.LVL20:
.LBB90:
.LBB91:
	.file 2 "/usr/include/sys/stat.h"
	.loc 2 457 0
	movq	8(%r14), %rsi
	leaq	64(%rsp), %rdx
	movl	$1, %edi
.LBE91:
.LBE90:
	.loc 1 464 0
	movq	%rax, %r15
.LVL21:
.LBB93:
.LBB92:
	.loc 2 457 0
	call	__xstat
.LVL22:
.LBE92:
.LBE93:
	.loc 1 468 0
	cmpl	$-1, %eax
	je	.L79
	.loc 1 475 0
	movq	112(%rsp), %rax
	testb	$3, %al
	jne	.L80
	.loc 1 483 0
	leaq	3(%rax), %r12
.LVL23:
	testq	%rax, %rax
.LBB94:
.LBB95:
	.loc 1 187 0
	movl	$16, %edi
.LBE95:
.LBE94:
	.loc 1 483 0
	cmovns	%rax, %r12
.LBB100:
.LBB98:
	.loc 1 196 0
	xorl	%ebx, %ebx
.LBE98:
.LBE100:
	.loc 1 483 0
	sarq	$2, %r12
.LVL24:
.LBB101:
.LBB99:
	.loc 1 187 0
	call	malloc
.LVL25:
	.loc 1 189 0
	leal	0(,%r12,4), %edi
	.loc 1 187 0
	movq	%rax, %rbp
.LVL26:
	.loc 1 189 0
	movslq	%edi, %rdi
	call	malloc
.LVL27:
	.loc 1 190 0
	movl	%r12d, 0(%rbp)
.LVL28:
	.loc 1 189 0
	movq	%rax, 8(%rbp)
	.loc 1 195 0
	movq	%r15, %rdi
	call	_IO_getc
.LVL29:
	.loc 1 196 0
	cmpl	$-1, %eax
	je	.L12
.LVL30:
	.p2align 4,,10
	.p2align 3
.L66:
	.loc 1 199 0
	sall	$8, %eax
.LVL31:
	.loc 1 200 0
	movq	%r15, %rdi
	.loc 1 199 0
	movl	%eax, %r14d
.LVL32:
	.loc 1 200 0
	call	_IO_getc
.LVL33:
	movl	%eax, %r12d
.LVL34:
	.loc 1 203 0
	movq	%r15, %rdi
	.loc 1 201 0
	orl	%r14d, %r12d
.LVL35:
	.loc 1 202 0
	sall	$8, %r12d
.LVL36:
	.loc 1 203 0
	call	_IO_getc
.LVL37:
	.loc 1 206 0
	movq	%r15, %rdi
	.loc 1 204 0
	orl	%eax, %r12d
.LVL38:
	.loc 1 205 0
	sall	$8, %r12d
.LVL39:
	.loc 1 206 0
	call	_IO_getc
.LVL40:
	.loc 1 209 0
	movq	%r15, %rdi
	.loc 1 207 0
	orl	%eax, %r12d
.LVL41:
	.loc 1 209 0
	call	_IO_getc
.LVL42:
	.loc 1 211 0
	movq	8(%rbp), %rsi
	movl	%r12d, (%rsi,%rbx)
	addq	$4, %rbx
	.loc 1 196 0
	cmpl	$-1, %eax
	jne	.L66
.LVL43:
.L12:
	.loc 1 214 0
	movq	16(%rsp), %rax
.LVL44:
	.loc 1 221 0
	movq	%r15, %rdi
.LBB96:
.LBB97:
	.loc 1 105 0
	movl	$999, 8(%r13)
.LBE97:
.LBE96:
	.loc 1 219 0
	movq	%rbp, 24(%r13)
	.loc 1 214 0
	movq	%rbp, (%rax)
.LVL45:
	.loc 1 221 0
	call	fclose
.LVL46:
.LBE99:
.LBE101:
.LBE102:
.LBE105:
.LBB106:
.LBB107:
	.loc 1 358 0
	movq	8(%rbp), %rax
	movl	(%rax), %eax
.LVL47:
	.loc 1 365 0
	movl	%eax, %edx
	shrl	$28, %edx
.LVL48:
	.loc 1 367 0
	cmpl	$7, %edx
	je	.L59
	movq	16(%rsp), %rbx
	movq	8(%rsp), %rbp
.LVL49:
	movl	$1000, %r8d
	.loc 1 355 0
	xorl	%r14d, %r14d
.LVL50:
	.p2align 4,,10
	.p2align 3
.L48:
.LBB108:
	.loc 1 369 0
	movl	%eax, %ecx
	.loc 1 370 0
	movl	%eax, %r12d
	.loc 1 371 0
	movl	%eax, %r15d
	.loc 1 369 0
	andl	$448, %ecx
	.loc 1 370 0
	andl	$56, %r12d
	.loc 1 371 0
	andl	$7, %r15d
	.loc 1 369 0
	shrl	$6, %ecx
.LVL51:
	.loc 1 370 0
	shrl	$3, %r12d
.LVL52:
	.loc 1 373 0
	cmpl	$13, %edx
	ja	.L76
	jmp	*.L17(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L17:
	.quad	.L16
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L22
	.quad	.L23
	.quad	.L59
	.quad	.L24
	.quad	.L25
	.quad	.L26
	.quad	.L27
	.quad	.L28
	.quad	.L29
	.section	.text.startup
.LVL53:
.L59:
	movq	16(%r13), %rbx
.L14:
.LVL54:
.LBE108:
.LBE107:
.LBE106:
.LBB162:
.LBB163:
	.loc 1 334 0
	movl	32(%r13), %r14d
.LVL55:
	.loc 1 335 0
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jle	.L50
.LVL56:
	.p2align 4,,10
	.p2align 3
.L67:
	.loc 1 336 0
	movq	(%rbx,%rbp,8), %r12
	testq	%r12, %r12
	je	.L51
.LVL57:
.LBB164:
	.loc 1 338 0
	movq	8(%r12), %rdi
	call	free
.LVL58:
	.loc 1 339 0
	movq	%r12, %rdi
	call	free
.LVL59:
.L51:
	addq	$1, %rbp
.LVL60:
.LBE164:
	.loc 1 335 0
	cmpl	%ebp, %r14d
	jg	.L67
.L50:
	.loc 1 344 0
	movq	0(%r13), %rdi
	call	free
.LVL61:
	.loc 1 345 0
	movq	%rbx, %rdi
	call	free
.LVL62:
	.loc 1 347 0
	movq	%r13, %rdi
	call	free
.LVL63:
.LBE163:
.LBE162:
	.loc 1 454 0
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL64:
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL65:
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL66:
.L28:
	.cfi_restore_state
.LBB165:
.LBB161:
.LBB159:
.LBB109:
.LBB110:
.LBB111:
	.loc 1 307 0
	movl	32(%rsp,%r12,4), %eax
.LVL67:
	testl	%eax, %eax
	je	.L43
	.loc 1 311 0
	movq	(%rbx,%rax,8), %rbp
.LVL68:
	.loc 1 313 0
	movq	(%rbx), %rbx
.LVL69:
	.loc 1 315 0
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L44
	.loc 1 316 0
	call	free
.LVL70:
	.loc 1 317 0
	movq	%rbx, %rdi
	call	free
.LVL71:
.L44:
	.loc 1 319 0
	movl	0(%rbp), %ebx
.LVL72:
	.loc 1 320 0
	movl	$16, %edi
	call	malloc
.LVL73:
	movq	%rax, %r12
.LVL74:
	.loc 1 322 0
	leal	0(,%rbx,4), %edi
	.loc 1 321 0
	movl	%ebx, (%rax)
	.loc 1 322 0
	movslq	%edi, %rdi
	call	malloc
.LVL75:
.LBB112:
	.loc 1 324 0
	testl	%ebx, %ebx
.LBE112:
	.loc 1 322 0
	movq	%rax, 8(%r12)
.LVL76:
.LBB113:
	.loc 1 324 0
	jle	.L46
	movq	8(%rbp), %rdi
	xorl	%edx, %edx
.LVL77:
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 325 0
	movl	(%rdi,%rdx,4), %ecx
	movl	%ecx, (%rax,%rdx,4)
.LVL78:
	addq	$1, %rdx
.LVL79:
	.loc 1 324 0
	cmpl	%edx, %ebx
	jg	.L47
.L46:
.LBE113:
	.loc 1 327 0
	movq	%r12, 24(%r13)
.LVL80:
.L43:
.LBE111:
.LBE110:
	.loc 1 417 0
	movl	32(%rsp,%r15,4), %r14d
.LVL81:
	movq	16(%r13), %rbx
	subl	$1, %r14d
.LVL82:
	jmp	.L15
.LVL83:
.L27:
.LBB114:
.LBB115:
	.loc 1 86 0
	movq	stdin(%rip), %rdi
	call	fgetc
.LVL84:
	movq	16(%r13), %rbx
	.loc 1 93 0
	movl	%eax, 32(%rsp,%r15,4)
.LVL85:
	.p2align 4,,10
	.p2align 3
.L15:
.LBE115:
.LBE114:
.LBE109:
	.loc 1 430 0
	movq	24(%r13), %rax
	.loc 1 429 0
	addl	$1, %r14d
.LVL86:
	.loc 1 430 0
	movl	%r14d, %edx
	movq	8(%rax), %rax
	movl	(%rax,%rdx,4), %eax
.LVL87:
	.loc 1 431 0
	movl	%eax, %edx
	shrl	$28, %edx
.LVL88:
.LBE159:
	.loc 1 367 0
	cmpl	$7, %edx
	je	.L14
	movl	32(%r13), %r8d
	movq	0(%r13), %rbp
	jmp	.L48
.LVL89:
.L26:
.LBB160:
.LBB158:
.LBB116:
.LBB117:
	.loc 1 98 0
	movl	32(%rsp,%r15,4), %edi
	movq	stdout(%rip), %rsi
	call	fputc
.LVL90:
	movq	16(%r13), %rbx
	jmp	.L15
.LVL91:
.L25:
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	.loc 1 292 0
	movl	32(%rsp,%r15,4), %r12d
.LVL92:
	movl	%r12d, %r15d
.LVL93:
	movq	(%rbx,%r15,8), %rbx
.LVL94:
	.loc 1 294 0
	movq	8(%rbx), %rdi
	call	free
.LVL95:
	.loc 1 295 0
	movq	%rbx, %rdi
	call	free
.LVL96:
.LBB120:
.LBB121:
	.loc 1 112 0
	movl	8(%r13), %eax
.LBE121:
.LBE120:
	.loc 1 297 0
	movq	16(%r13), %rbx
.LVL97:
.LBB124:
.LBB122:
	.loc 1 113 0
	movslq	%eax, %rdx
	.loc 1 114 0
	addl	$1, %eax
.LBE122:
.LBE124:
	.loc 1 297 0
	movq	$0, (%rbx,%r15,8)
.LVL98:
.LBB125:
.LBB123:
	.loc 1 114 0
	movl	%eax, 8(%r13)
	.loc 1 113 0
	movl	%r12d, 0(%rbp,%rdx,4)
	jmp	.L15
.LVL99:
.L24:
.LBE123:
.LBE125:
.LBE119:
.LBE118:
.LBB126:
.LBB127:
	.loc 1 275 0
	movslq	32(%rsp,%r15,4), %rdx
.LVL100:
	.loc 1 276 0
	movl	$16, %edi
	movl	%r8d, 16(%rsp)
.LVL101:
	.loc 1 275 0
	movq	%rdx, 8(%rsp)
.LVL102:
	.loc 1 276 0
	call	malloc
.LVL103:
	.loc 1 277 0
	movq	8(%rsp), %rdx
	.loc 1 278 0
	movl	$4, %esi
	.loc 1 276 0
	movq	%rax, %r15
.LVL104:
	.loc 1 277 0
	movl	%edx, (%rax)
	.loc 1 278 0
	movq	%rdx, %rdi
	call	calloc
.LVL105:
	.loc 1 280 0
	cmpl	$0, 8(%r13)
	.loc 1 278 0
	movq	%rax, 8(%r15)
	.loc 1 280 0
	movl	16(%rsp), %r8d
	je	.L81
.LVL106:
.L30:
.LBB128:
.LBB129:
	.loc 1 103 0
	movl	8(%r13), %eax
.LBE129:
.LBE128:
	.loc 1 285 0
	movq	16(%r13), %rbx
.LBB131:
.LBB130:
	.loc 1 103 0
	leal	-1(%rax), %edx
.LVL107:
	.loc 1 104 0
	movq	0(%r13), %rax
	movslq	%edx, %rcx
	.loc 1 105 0
	movl	%edx, 8(%r13)
	.loc 1 104 0
	movl	(%rax,%rcx,4), %eax
.LVL108:
.LBE130:
.LBE131:
	.loc 1 285 0
	movl	%eax, %edx
.LVL109:
	.loc 1 287 0
	movl	%eax, 32(%rsp,%r12,4)
	.loc 1 285 0
	movq	%r15, (%rbx,%rdx,8)
	jmp	.L15
.LVL110:
.L23:
.LBE127:
.LBE126:
.LBB141:
.LBB142:
	.loc 1 69 0
	movl	32(%rsp,%r12,4), %eax
.LVL111:
	andl	32(%rsp,%r15,4), %eax
	movq	16(%r13), %rbx
	notl	%eax
	movl	%eax, 32(%rsp,%rcx,4)
	jmp	.L15
.LVL112:
.L22:
.LBE142:
.LBE141:
.LBB143:
.LBB144:
	.loc 1 75 0
	movl	32(%rsp,%r12,4), %eax
.LVL113:
	xorl	%edx, %edx
.LVL114:
	movq	16(%r13), %rbx
	divl	32(%rsp,%r15,4)
	movl	%eax, 32(%rsp,%rcx,4)
	jmp	.L15
.LVL115:
.L21:
.LBE144:
.LBE143:
.LBB145:
.LBB146:
	.loc 1 62 0
	movl	32(%rsp,%r12,4), %eax
.LVL116:
	movq	16(%r13), %rbx
	imull	32(%rsp,%r15,4), %eax
	movl	%eax, 32(%rsp,%rcx,4)
	jmp	.L15
.LVL117:
.L20:
.LBE146:
.LBE145:
.LBB147:
.LBB148:
	.loc 1 55 0
	movl	32(%rsp,%r12,4), %eax
.LVL118:
	addl	32(%rsp,%r15,4), %eax
	movq	16(%r13), %rbx
	movl	%eax, 32(%rsp,%rcx,4)
	jmp	.L15
.LVL119:
.L19:
.LBE148:
.LBE147:
.LBB149:
.LBB150:
	.loc 1 264 0
	movl	32(%rsp,%rcx,4), %eax
.LVL120:
	.loc 1 266 0
	movl	32(%rsp,%r12,4), %edx
.LVL121:
	movl	32(%rsp,%r15,4), %ecx
.LVL122:
	movq	(%rbx,%rax,8), %rax
	movq	16(%r13), %rbx
	movq	8(%rax), %rax
	movl	%ecx, (%rax,%rdx,4)
	jmp	.L15
.LVL123:
.L18:
.LBE150:
.LBE149:
.LBB151:
.LBB152:
	.loc 1 255 0
	movl	32(%rsp,%r12,4), %eax
.LVL124:
	.loc 1 257 0
	movl	32(%rsp,%r15,4), %edx
.LVL125:
	movq	(%rbx,%rax,8), %rax
	movq	16(%r13), %rbx
.LVL126:
	movq	8(%rax), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, 32(%rsp,%rcx,4)
	jmp	.L15
.LVL127:
.L16:
.LBE152:
.LBE151:
.LBB153:
.LBB154:
	.loc 1 47 0
	cmpl	$0, 32(%rsp,%r15,4)
	je	.L76
	.loc 1 48 0
	movl	32(%rsp,%r12,4), %eax
.LVL128:
	movq	16(%r13), %rbx
	movl	%eax, 32(%rsp,%rcx,4)
	jmp	.L15
.LVL129:
.L29:
.LBE154:
.LBE153:
	.loc 1 421 0
	movq	%rax, %rdx
.LVL130:
	.loc 1 423 0
	andl	$33554431, %eax
.LVL131:
	.loc 1 421 0
	shrq	$25, %rdx
.LBB155:
.LBB156:
	.loc 1 81 0
	andl	$7, %edx
.LBE156:
.LBE155:
	.loc 1 423 0
	movl	%eax, 32(%rsp,%rdx,4)
.LVL132:
.L76:
	movq	16(%r13), %rbx
	jmp	.L15
.LVL133:
.L81:
.LBB157:
.LBB140:
.LBB132:
.LBB133:
	.loc 1 231 0
	movl	%r8d, %edi
	movl	%r8d, 8(%rsp)
.LVL134:
	sall	$4, %edi
	movslq	%edi, %rdi
	call	malloc
.LVL135:
	.loc 1 233 0
	movl	8(%rsp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
.LVL136:
	js	.L34
	movl	%r9d, %r10d
	movslq	%r9d, %rsi
	xorl	%edx, %edx
	addq	$1, %r10
	salq	$3, %rsi
	imulq	$-8, %r10, %r10
	leaq	(%rbx,%rsi), %rdi
	addq	%rax, %rsi
.LVL137:
	.p2align 4,,10
	.p2align 3
.L35:
	.loc 1 234 0
	movq	(%rdi,%rdx), %rcx
	movq	%rcx, (%rsi,%rdx)
	subq	$8, %rdx
	.loc 1 233 0
	cmpq	%r10, %rdx
	jne	.L35
.L34:
	.loc 1 237 0
	leal	(%r8,%r8), %esi
.LVL138:
	.loc 1 239 0
	cmpl	%r8d, %esi
	jle	.L33
	subl	%r8d, %esi
.LVL139:
	movslq	%r8d, %rcx
	subl	$1, %esi
	leaq	(%rax,%rcx,8), %rdx
	addq	%rsi, %rcx
	leaq	8(%rax,%rcx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L38:
	.loc 1 240 0
	movq	$0, (%rdx)
	addq	$8, %rdx
	.loc 1 239 0
	cmpq	%rcx, %rdx
	jne	.L38
.L33:
	.loc 1 244 0
	movq	%rbx, %rdi
	movl	%r9d, 28(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%rax, 8(%rsp)
.LVL140:
	call	free
.LVL141:
.LBB134:
.LBB135:
	.loc 1 122 0
	movl	16(%rsp), %r8d
	.loc 1 125 0
	movl	28(%rsp), %r9d
.LBE135:
.LBE134:
	.loc 1 245 0
	movq	8(%rsp), %rax
.LBB138:
.LBB136:
	.loc 1 122 0
	leal	(%r8,%r8), %esi
	.loc 1 126 0
	leal	0(,%r8,8), %edi
	.loc 1 125 0
	movl	%r9d, %ebx
	.loc 1 126 0
	movl	%r8d, 8(%rsp)
.LVL142:
.LBE136:
.LBE138:
	.loc 1 245 0
	movq	%rax, 16(%r13)
.LVL143:
.LBB139:
.LBB137:
	.loc 1 122 0
	movl	%esi, 16(%rsp)
.LVL144:
	.loc 1 126 0
	call	malloc
.LVL145:
	.loc 1 129 0
	testl	%ebx, %ebx
	movl	8(%rsp), %r8d
	movl	16(%rsp), %esi
	js	.L37
	movslq	%ebx, %rdx
	leaq	(%rax,%rdx,4), %rcx
.LVL146:
	.p2align 4,,10
	.p2align 3
.L41:
	.loc 1 130 0
	subl	$1, %ebx
.LVL147:
	subq	$4, %rcx
	leal	1(%rbx,%rsi), %edx
	subl	%r8d, %edx
	movl	%edx, 4(%rcx)
	.loc 1 129 0
	testl	%ebx, %ebx
	jns	.L41
.L37:
.LVL148:
	.loc 1 133 0
	cmpl	%r8d, %esi
	jle	.L40
	movslq	%r8d, %rdx
	leaq	4(%rax,%rdx,4), %rcx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L42:
	.loc 1 134 0
	movl	%edx, %edi
	addq	$20, %rcx
	movl	0(%rbp,%rdi,4), %edi
	movl	%edi, -24(%rcx)
	.loc 1 135 0
	leal	1(%rdx), %edi
	movl	0(%rbp,%rdi,4), %edi
	movl	%edi, -20(%rcx)
	.loc 1 136 0
	leal	2(%rdx), %edi
	movl	0(%rbp,%rdi,4), %edi
	movl	%edi, -16(%rcx)
	.loc 1 137 0
	leal	3(%rdx), %edi
	movl	0(%rbp,%rdi,4), %edi
	movl	%edi, -12(%rcx)
	.loc 1 138 0
	leal	4(%rdx), %edi
	addl	$5, %edx
	movl	0(%rbp,%rdi,4), %edi
	movl	%edi, -8(%rcx)
	leal	(%r8,%rdx), %edi
	.loc 1 133 0
	cmpl	%edi, %esi
	jg	.L42
.L40:
	.loc 1 140 0
	movq	%rbp, %rdi
	movl	%r8d, 28(%rsp)
.LVL149:
	movq	%rax, 16(%rsp)
.LVL150:
	movl	%esi, 8(%rsp)
.LVL151:
	call	free
.LVL152:
	.loc 1 142 0
	movl	8(%rsp), %esi
	.loc 1 143 0
	movl	28(%rsp), %r8d
	.loc 1 141 0
	movq	16(%rsp), %rax
	.loc 1 142 0
	movl	%esi, 32(%r13)
	.loc 1 143 0
	subl	%r8d, %esi
	.loc 1 141 0
	movq	%rax, 0(%r13)
	.loc 1 143 0
	movl	%esi, 8(%r13)
	jmp	.L30
.LVL153:
.L80:
.LBE137:
.LBE139:
.LBE133:
.LBE132:
.LBE140:
.LBE157:
.LBE158:
.LBE160:
.LBE161:
.LBE165:
.LBB166:
.LBB103:
	.loc 1 476 0
	movq	stderr(%rip), %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
.LVL154:
	.loc 1 477 0
	movq	stderr(%rip), %rcx
	movl	$.LC4, %edi
	movl	$32, %edx
	movl	$1, %esi
	call	fwrite
.LVL155:
	.loc 1 478 0
	movl	$1, %edi
	call	exit
.LVL156:
.L79:
	.loc 1 469 0
	movq	stderr(%rip), %rcx
	movl	$.LC2, %edi
	movl	$18, %edx
	movl	$1, %esi
	call	fwrite
.LVL157:
	.loc 1 470 0
	movl	$1, %edi
	call	exit
.LVL158:
.L78:
	.loc 1 459 0
	movq	stderr(%rip), %rcx
	movl	$.LC0, %edi
	movl	$31, %edx
.LVL159:
	movl	$1, %esi
	call	fwrite
.LVL160:
	.loc 1 460 0
	movl	$1, %edi
	call	exit
.LVL161:
.LBE103:
.LBE166:
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/sup/gcc-4.8.0/lib/gcc/x86_64-unknown-linux-gnu/4.8.0/include/stddef.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdint.h"
	.file 8 "/usr/include/bits/stat.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17c9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF154
	.byte	0x1
	.long	.LASF155
	.long	.LASF156
	.long	.Ldebug_ranges0+0x2a0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x86
	.long	0x34
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x87
	.long	0x49
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x88
	.long	0x49
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x89
	.long	0x34
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x8b
	.long	0x49
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x8c
	.long	0x34
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x8d
	.long	0x65
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x8e
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x95
	.long	0x65
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xa4
	.long	0x65
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xa9
	.long	0x65
	.uleb128 0x6
	.byte	0x8
	.long	0xf4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0x31
	.long	0x106
	.uleb128 0x7
	.long	.LASF51
	.byte	0xd8
	.byte	0x6
	.value	0x10f
	.long	0x28d
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x110
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x115
	.long	0xee
	.byte	0x8
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x116
	.long	0xee
	.byte	0x10
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x117
	.long	0xee
	.byte	0x18
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x118
	.long	0xee
	.byte	0x20
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x119
	.long	0xee
	.byte	0x28
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x11a
	.long	0xee
	.byte	0x30
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x11b
	.long	0xee
	.byte	0x38
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x11c
	.long	0xee
	.byte	0x40
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x11e
	.long	0xee
	.byte	0x48
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x11f
	.long	0xee
	.byte	0x50
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x120
	.long	0xee
	.byte	0x58
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x122
	.long	0x2c5
	.byte	0x60
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x124
	.long	0x2cb
	.byte	0x68
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x126
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x12a
	.long	0x5e
	.byte	0x74
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x12c
	.long	0xae
	.byte	0x78
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x130
	.long	0x42
	.byte	0x80
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x131
	.long	0x50
	.byte	0x82
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x132
	.long	0x2d1
	.byte	0x83
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.value	0x136
	.long	0x2e1
	.byte	0x88
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.value	0x13f
	.long	0xb9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.value	0x148
	.long	0xd6
	.byte	0x98
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.value	0x149
	.long	0xd6
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.value	0x14a
	.long	0xd6
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.value	0x14b
	.long	0xd6
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.value	0x14c
	.long	0x29
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.value	0x14e
	.long	0x5e
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.value	0x150
	.long	0x2e7
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF157
	.byte	0x6
	.byte	0xb4
	.uleb128 0xa
	.long	.LASF52
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.long	0x2c5
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.byte	0xbb
	.long	0x2c5
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.byte	0xbc
	.long	0x2cb
	.byte	0x8
	.uleb128 0xb
	.long	.LASF55
	.byte	0x6
	.byte	0xc0
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x294
	.uleb128 0x6
	.byte	0x8
	.long	0x106
	.uleb128 0xc
	.long	0xf4
	.long	0x2e1
	.uleb128 0xd
	.long	0xc4
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0xc
	.long	0xf4
	.long	0x2f7
	.uleb128 0xd
	.long	0xc4
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x6
	.value	0x155
	.long	0x106
	.uleb128 0x6
	.byte	0x8
	.long	0x309
	.uleb128 0xf
	.long	0xf4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF56
	.uleb128 0x6
	.byte	0x8
	.long	0x31b
	.uleb128 0x10
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x34
	.long	0x49
	.uleb128 0xa
	.long	.LASF58
	.byte	0x90
	.byte	0x8
	.byte	0x2e
	.long	0x40c
	.uleb128 0xb
	.long	.LASF59
	.byte	0x8
	.byte	0x30
	.long	0x6c
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x8
	.byte	0x35
	.long	0x8d
	.byte	0x8
	.uleb128 0xb
	.long	.LASF61
	.byte	0x8
	.byte	0x3d
	.long	0xa3
	.byte	0x10
	.uleb128 0xb
	.long	.LASF62
	.byte	0x8
	.byte	0x3e
	.long	0x98
	.byte	0x18
	.uleb128 0xb
	.long	.LASF63
	.byte	0x8
	.byte	0x40
	.long	0x77
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF64
	.byte	0x8
	.byte	0x41
	.long	0x82
	.byte	0x20
	.uleb128 0xb
	.long	.LASF65
	.byte	0x8
	.byte	0x43
	.long	0x5e
	.byte	0x24
	.uleb128 0xb
	.long	.LASF66
	.byte	0x8
	.byte	0x45
	.long	0x6c
	.byte	0x28
	.uleb128 0xb
	.long	.LASF67
	.byte	0x8
	.byte	0x4a
	.long	0xae
	.byte	0x30
	.uleb128 0xb
	.long	.LASF68
	.byte	0x8
	.byte	0x4e
	.long	0xd8
	.byte	0x38
	.uleb128 0xb
	.long	.LASF69
	.byte	0x8
	.byte	0x50
	.long	0xe3
	.byte	0x40
	.uleb128 0xb
	.long	.LASF70
	.byte	0x8
	.byte	0x62
	.long	0xcb
	.byte	0x48
	.uleb128 0xb
	.long	.LASF71
	.byte	0x8
	.byte	0x63
	.long	0x34
	.byte	0x50
	.uleb128 0xb
	.long	.LASF72
	.byte	0x8
	.byte	0x64
	.long	0xcb
	.byte	0x58
	.uleb128 0xb
	.long	.LASF73
	.byte	0x8
	.byte	0x65
	.long	0x34
	.byte	0x60
	.uleb128 0xb
	.long	.LASF74
	.byte	0x8
	.byte	0x66
	.long	0xcb
	.byte	0x68
	.uleb128 0xb
	.long	.LASF75
	.byte	0x8
	.byte	0x67
	.long	0x34
	.byte	0x70
	.uleb128 0xb
	.long	.LASF76
	.byte	0x8
	.byte	0x6a
	.long	0x40c
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.long	0x65
	.long	0x41c
	.uleb128 0xd
	.long	0xc4
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x1
	.byte	0x9
	.long	0x31c
	.uleb128 0x2
	.long	.LASF78
	.byte	0x1
	.byte	0xa
	.long	0x31c
	.uleb128 0xa
	.long	.LASF79
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.long	0x457
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x11
	.long	0x5e
	.byte	0
	.uleb128 0x11
	.string	"arr"
	.byte	0x1
	.byte	0x12
	.long	0x457
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x31c
	.uleb128 0x2
	.long	.LASF79
	.byte	0x1
	.byte	0x13
	.long	0x468
	.uleb128 0x6
	.byte	0x8
	.long	0x432
	.uleb128 0xa
	.long	.LASF80
	.byte	0x28
	.byte	0x1
	.byte	0x17
	.long	0x4b7
	.uleb128 0xb
	.long	.LASF81
	.byte	0x1
	.byte	0x18
	.long	0x457
	.byte	0
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x19
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF83
	.byte	0x1
	.byte	0x1b
	.long	0x4b7
	.byte	0x10
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1
	.byte	0x1c
	.long	0x45d
	.byte	0x18
	.uleb128 0xb
	.long	.LASF85
	.byte	0x1
	.byte	0x1e
	.long	0x5e
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x45d
	.uleb128 0x2
	.long	.LASF80
	.byte	0x1
	.byte	0x1f
	.long	0x4c8
	.uleb128 0x6
	.byte	0x8
	.long	0x46e
	.uleb128 0x12
	.long	.LASF158
	.byte	0x1
	.byte	0x65
	.long	0x31c
	.byte	0x3
	.long	0x500
	.uleb128 0x13
	.string	"mem"
	.byte	0x1
	.byte	0x65
	.long	0x4bd
	.uleb128 0x14
	.long	.LASF86
	.byte	0x1
	.byte	0x67
	.long	0x5e
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0x68
	.long	0x31c
	.byte	0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.long	0x52e
	.uleb128 0x13
	.string	"mem"
	.byte	0x1
	.byte	0x6e
	.long	0x4bd
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.byte	0x6e
	.long	0x31c
	.uleb128 0x17
	.string	"top"
	.byte	0x1
	.byte	0x70
	.long	0x5e
	.byte	0
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.byte	0xfc
	.byte	0x3
	.long	0x57a
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0xfc
	.long	0x49
	.uleb128 0x13
	.string	"rb"
	.byte	0x1
	.byte	0xfc
	.long	0x49
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0xfc
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0xfd
	.long	0x457
	.uleb128 0x13
	.string	"mem"
	.byte	0x1
	.byte	0xfd
	.long	0x4bd
	.uleb128 0x14
	.long	.LASF91
	.byte	0x1
	.byte	0xff
	.long	0x45d
	.byte	0
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0x105
	.byte	0x3
	.long	0x5cd
	.uleb128 0x19
	.string	"ra"
	.byte	0x1
	.value	0x105
	.long	0x49
	.uleb128 0x19
	.string	"rb"
	.byte	0x1
	.value	0x105
	.long	0x49
	.uleb128 0x19
	.string	"rc"
	.byte	0x1
	.value	0x105
	.long	0x49
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x106
	.long	0x457
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x106
	.long	0x4bd
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.value	0x108
	.long	0x45d
	.byte	0
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x2
	.value	0x1c7
	.long	0x5e
	.byte	0x3
	.long	0x5f7
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x2
	.value	0x1c7
	.long	0x303
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x2
	.value	0x1c7
	.long	0x5f7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x327
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x12f
	.byte	0x3
	.long	0x65e
	.uleb128 0x19
	.string	"rb"
	.byte	0x1
	.value	0x12f
	.long	0x49
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x12f
	.long	0x457
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x130
	.long	0x4bd
	.uleb128 0x1b
	.long	.LASF96
	.byte	0x1
	.value	0x137
	.long	0x45d
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.value	0x139
	.long	0x45d
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.value	0x13f
	.long	0x5e
	.uleb128 0x1d
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x144
	.long	0x5e
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.byte	0x2c
	.byte	0x3
	.long	0x694
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x2c
	.long	0x49
	.uleb128 0x13
	.string	"rb"
	.byte	0x1
	.byte	0x2c
	.long	0x49
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x2d
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x2d
	.long	0x457
	.byte	0
	.uleb128 0x15
	.long	.LASF100
	.byte	0x1
	.byte	0x34
	.byte	0x3
	.long	0x6ca
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x34
	.long	0x49
	.uleb128 0x13
	.string	"rb"
	.byte	0x1
	.byte	0x34
	.long	0x49
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x34
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x35
	.long	0x457
	.byte	0
	.uleb128 0x15
	.long	.LASF101
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.long	0x700
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x3b
	.long	0x49
	.uleb128 0x13
	.string	"rb"
	.byte	0x1
	.byte	0x3b
	.long	0x49
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x3c
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x3c
	.long	0x457
	.byte	0
	.uleb128 0x15
	.long	.LASF102
	.byte	0x1
	.byte	0x48
	.byte	0x3
	.long	0x736
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x48
	.long	0x49
	.uleb128 0x13
	.string	"rb"
	.byte	0x1
	.byte	0x48
	.long	0x49
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x49
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x49
	.long	0x457
	.byte	0
	.uleb128 0x15
	.long	.LASF103
	.byte	0x1
	.byte	0x42
	.byte	0x3
	.long	0x76c
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x42
	.long	0x49
	.uleb128 0x13
	.string	"rb"
	.byte	0x1
	.byte	0x42
	.long	0x49
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x43
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x43
	.long	0x457
	.byte	0
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.long	0x78e
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x60
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x60
	.long	0x457
	.byte	0
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0x4e
	.byte	0x3
	.long	0x7bb
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x4e
	.long	0x49
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.byte	0x4e
	.long	0x31c
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x4f
	.long	0x457
	.byte	0
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x1
	.byte	0x98
	.long	0x4bd
	.byte	0x1
	.long	0x7eb
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x9a
	.long	0x4bd
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.long	0x5e
	.uleb128 0x14
	.long	.LASF86
	.byte	0x1
	.byte	0xaa
	.long	0x5e
	.byte	0
	.uleb128 0x18
	.long	.LASF107
	.byte	0x1
	.value	0x1c8
	.byte	0x1
	.long	0x841
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x1c8
	.long	0x5e
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.value	0x1c8
	.long	0x841
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x1c8
	.long	0x4bd
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.value	0x1d0
	.long	0x847
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.value	0x1d2
	.long	0x327
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.value	0x1e3
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xee
	.uleb128 0x6
	.byte	0x8
	.long	0xfb
	.uleb128 0x15
	.long	.LASF113
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	0x8a7
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0xb9
	.long	0x847
	.uleb128 0x13
	.string	"mem"
	.byte	0x1
	.byte	0xb9
	.long	0x4bd
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.byte	0xb9
	.long	0x5e
	.uleb128 0x14
	.long	.LASF84
	.byte	0x1
	.byte	0xbb
	.long	0x45d
	.uleb128 0x14
	.long	.LASF114
	.byte	0x1
	.byte	0xc0
	.long	0x31c
	.uleb128 0x14
	.long	.LASF115
	.byte	0x1
	.byte	0xc1
	.long	0x31c
	.uleb128 0x14
	.long	.LASF116
	.byte	0x1
	.byte	0xc2
	.long	0x5e
	.byte	0
	.uleb128 0x18
	.long	.LASF117
	.byte	0x1
	.value	0x160
	.byte	0x3
	.long	0x969
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x160
	.long	0x457
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x160
	.long	0x4bd
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.value	0x163
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x1
	.value	0x166
	.long	0x41c
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x1
	.value	0x168
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x1
	.value	0x169
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.value	0x16a
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x1
	.value	0x16b
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x1
	.value	0x16d
	.long	0x31c
	.uleb128 0x1d
	.uleb128 0x1e
	.string	"ra"
	.byte	0x1
	.value	0x171
	.long	0x31c
	.uleb128 0x1e
	.string	"rb"
	.byte	0x1
	.value	0x172
	.long	0x31c
	.uleb128 0x1e
	.string	"rc"
	.byte	0x1
	.value	0x173
	.long	0x31c
	.uleb128 0x1d
	.uleb128 0x1e
	.string	"ra"
	.byte	0x1
	.value	0x1a5
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x1
	.value	0x1a6
	.long	0x31c
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x1a7
	.long	0x31c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.value	0x110
	.byte	0x3
	.long	0x9c9
	.uleb128 0x19
	.string	"rb"
	.byte	0x1
	.value	0x110
	.long	0x49
	.uleb128 0x19
	.string	"rc"
	.byte	0x1
	.value	0x110
	.long	0x49
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x111
	.long	0x457
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x111
	.long	0x4bd
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.value	0x113
	.long	0x5e
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x1
	.value	0x114
	.long	0x45d
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x1
	.value	0x11c
	.long	0x427
	.byte	0
	.uleb128 0x15
	.long	.LASF129
	.byte	0x1
	.byte	0xe3
	.byte	0x3
	.long	0xa0b
	.uleb128 0x13
	.string	"mem"
	.byte	0x1
	.byte	0xe3
	.long	0x4bd
	.uleb128 0x14
	.long	.LASF130
	.byte	0x1
	.byte	0xe5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF131
	.byte	0x1
	.byte	0xe7
	.long	0x4b7
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xe8
	.long	0x5e
	.uleb128 0x14
	.long	.LASF132
	.byte	0x1
	.byte	0xed
	.long	0x5e
	.byte	0
	.uleb128 0x15
	.long	.LASF133
	.byte	0x1
	.byte	0x75
	.byte	0x3
	.long	0xa56
	.uleb128 0x13
	.string	"mem"
	.byte	0x1
	.byte	0x75
	.long	0x4bd
	.uleb128 0x14
	.long	.LASF134
	.byte	0x1
	.byte	0x78
	.long	0x49
	.uleb128 0x14
	.long	.LASF132
	.byte	0x1
	.byte	0x7a
	.long	0x5e
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x7b
	.long	0x5e
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x7d
	.long	0x5e
	.uleb128 0x14
	.long	.LASF135
	.byte	0x1
	.byte	0x7e
	.long	0x457
	.byte	0
	.uleb128 0x18
	.long	.LASF136
	.byte	0x1
	.value	0x122
	.byte	0x3
	.long	0xa93
	.uleb128 0x19
	.string	"rc"
	.byte	0x1
	.value	0x122
	.long	0x49
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x122
	.long	0x457
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x122
	.long	0x4bd
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x1
	.value	0x124
	.long	0x45d
	.byte	0
	.uleb128 0x15
	.long	.LASF138
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.long	0xac0
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x54
	.long	0x49
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x54
	.long	0x457
	.uleb128 0x14
	.long	.LASF139
	.byte	0x1
	.byte	0x56
	.long	0x31c
	.byte	0
	.uleb128 0x18
	.long	.LASF140
	.byte	0x1
	.value	0x14a
	.byte	0x3
	.long	0xafe
	.uleb128 0x19
	.string	"mem"
	.byte	0x1
	.value	0x14a
	.long	0x4bd
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x14d
	.long	0x5e
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x14e
	.long	0x5e
	.uleb128 0x1d
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.value	0x151
	.long	0x45d
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF159
	.byte	0x1
	.value	0x1b8
	.long	0x5e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1685
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.value	0x1b8
	.long	0x5e
	.long	.LLST0
	.uleb128 0x21
	.long	.LASF109
	.byte	0x1
	.value	0x1b8
	.long	0x841
	.long	.LLST1
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.value	0x1bb
	.long	0x4bd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.long	.LASF90
	.byte	0x1
	.value	0x1be
	.long	0x1685
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.long	0x7bb
	.quad	.LBB83
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1bb
	.long	0xbde
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.long	0x7cb
	.long	.LLST2
	.uleb128 0x26
	.long	0x7d6
	.long	.LLST3
	.uleb128 0x26
	.long	0x7df
	.long	.LLST4
	.uleb128 0x27
	.quad	.LVL2
	.long	0x16b6
	.long	0xbae
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x27
	.quad	.LVL4
	.long	0x16b6
	.long	0xbc7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0xfa0
	.byte	0
	.uleb128 0x29
	.quad	.LVL5
	.long	0x16b6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x1f40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x7eb
	.quad	.LBB88
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.value	0x1c0
	.long	0xee4
	.uleb128 0x2a
	.long	0x810
	.long	.LLST5
	.uleb128 0x2a
	.long	0x804
	.long	.LLST6
	.uleb128 0x2a
	.long	0x7f8
	.long	.LLST7
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x26
	.long	0x81c
	.long	.LLST8
	.uleb128 0x2b
	.long	0x828
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	0x834
	.long	.LLST9
	.uleb128 0x24
	.long	0x5cd
	.quad	.LBB90
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.value	0x1d4
	.long	0xc76
	.uleb128 0x2a
	.long	0x5ea
	.long	.LLST10
	.uleb128 0x2a
	.long	0x5de
	.long	.LLST11
	.uleb128 0x29
	.quad	.LVL22
	.long	0x16cc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x84d
	.quad	.LBB94
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.value	0x1e5
	.long	0xddd
	.uleb128 0x2a
	.long	0x86f
	.long	.LLST9
	.uleb128 0x2a
	.long	0x864
	.long	.LLST13
	.uleb128 0x2a
	.long	0x859
	.long	.LLST14
	.uleb128 0x25
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x26
	.long	0x87a
	.long	.LLST15
	.uleb128 0x26
	.long	0x885
	.long	.LLST16
	.uleb128 0x26
	.long	0x890
	.long	.LLST17
	.uleb128 0x26
	.long	0x89b
	.long	.LLST18
	.uleb128 0x2c
	.long	0x4ce
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.byte	0x1
	.byte	0xd8
	.long	0xd18
	.uleb128 0x2d
	.long	0x4de
	.uleb128 0x2d
	.long	0x4de
	.uleb128 0x2e
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x26
	.long	0x4e9
	.long	.LLST19
	.uleb128 0x2f
	.long	0x4f4
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL25
	.long	0x16b6
	.long	0xd2f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.quad	.LVL27
	.long	0x16b6
	.long	0xd4f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.quad	.LVL29
	.long	0x16ec
	.long	0xd67
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL33
	.long	0x16ec
	.long	0xd7f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL37
	.long	0x16ec
	.long	0xd97
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL40
	.long	0x16ec
	.long	0xdaf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL42
	.long	0x16ec
	.long	0xdc7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL46
	.long	0x1708
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL20
	.long	0x171d
	.long	0xdfc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x27
	.quad	.LVL154
	.long	0x1738
	.long	0xe25
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4d
	.byte	0
	.uleb128 0x27
	.quad	.LVL155
	.long	0x1738
	.long	0xe4f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.quad	.LVL156
	.long	0x1760
	.long	0xe66
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.quad	.LVL157
	.long	0x1738
	.long	0xe8f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x27
	.quad	.LVL158
	.long	0x1760
	.long	0xea6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.quad	.LVL160
	.long	0x1738
	.long	0xecf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x29
	.quad	.LVL161
	.long	0x1760
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x8a7
	.quad	.LBB106
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.value	0x1c2
	.long	0x15c5
	.uleb128 0x2a
	.long	0x8c0
	.long	.LLST20
	.uleb128 0x2a
	.long	0x8b4
	.long	.LLST21
	.uleb128 0x25
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x26
	.long	0x8cc
	.long	.LLST22
	.uleb128 0x26
	.long	0x8d8
	.long	.LLST23
	.uleb128 0x26
	.long	0x8e4
	.long	.LLST24
	.uleb128 0x26
	.long	0x8f0
	.long	.LLST25
	.uleb128 0x26
	.long	0x8fc
	.long	.LLST26
	.uleb128 0x26
	.long	0x908
	.long	.LLST27
	.uleb128 0x26
	.long	0x914
	.long	.LLST28
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x26
	.long	0x921
	.long	.LLST29
	.uleb128 0x26
	.long	0x92c
	.long	.LLST30
	.uleb128 0x26
	.long	0x937
	.long	.LLST31
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x26
	.long	0x943
	.long	.LLST32
	.uleb128 0x26
	.long	0x94e
	.long	.LLST33
	.uleb128 0x26
	.long	0x95a
	.long	.LLST34
	.uleb128 0x30
	.long	0x5fd
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.byte	0x1
	.value	0x1a0
	.long	0x1063
	.uleb128 0x2d
	.long	0x621
	.uleb128 0x2d
	.long	0x621
	.uleb128 0x2a
	.long	0x615
	.long	.LLST35
	.uleb128 0x2a
	.long	0x60a
	.long	.LLST36
	.uleb128 0x2e
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.uleb128 0x26
	.long	0x62d
	.long	.LLST37
	.uleb128 0x26
	.long	0x639
	.long	.LLST38
	.uleb128 0x26
	.long	0x645
	.long	.LLST39
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x190
	.long	0x1009
	.uleb128 0x26
	.long	0x652
	.long	.LLST40
	.byte	0
	.uleb128 0x32
	.quad	.LVL70
	.long	0x1772
	.uleb128 0x27
	.quad	.LVL71
	.long	0x1772
	.long	0x102e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL73
	.long	0x16b6
	.long	0x1045
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.quad	.LVL75
	.long	0x16b6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0xa93
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.byte	0x1
	.value	0x19d
	.long	0x10ba
	.uleb128 0x2a
	.long	0xaa9
	.long	.LLST41
	.uleb128 0x2a
	.long	0xa9f
	.long	.LLST42
	.uleb128 0x2e
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.uleb128 0x26
	.long	0xab4
	.long	.LLST43
	.uleb128 0x32
	.quad	.LVL84
	.long	0x1784
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x76c
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.byte	0x1
	.value	0x19a
	.long	0x10f6
	.uleb128 0x2a
	.long	0x782
	.long	.LLST44
	.uleb128 0x2a
	.long	0x778
	.long	.LLST45
	.uleb128 0x32
	.quad	.LVL90
	.long	0x179a
	.byte	0
	.uleb128 0x30
	.long	0xa56
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.byte	0x1
	.value	0x197
	.long	0x11a3
	.uleb128 0x2a
	.long	0xa7a
	.long	.LLST46
	.uleb128 0x2a
	.long	0xa6e
	.long	.LLST47
	.uleb128 0x2a
	.long	0xa63
	.long	.LLST48
	.uleb128 0x2e
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x26
	.long	0xa86
	.long	.LLST49
	.uleb128 0x24
	.long	0x500
	.quad	.LBB120
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.value	0x12b
	.long	0x1180
	.uleb128 0x2d
	.long	0x50c
	.uleb128 0x2d
	.long	0x50c
	.uleb128 0x2a
	.long	0x517
	.long	.LLST50
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x2b
	.long	0x522
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL95
	.long	0x1772
	.uleb128 0x29
	.quad	.LVL96
	.long	0x1772
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x969
	.quad	.LBB126
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.value	0x194
	.long	0x1386
	.uleb128 0x2a
	.long	0x998
	.long	.LLST51
	.uleb128 0x2a
	.long	0x98c
	.long	.LLST52
	.uleb128 0x2a
	.long	0x981
	.long	.LLST53
	.uleb128 0x2a
	.long	0x976
	.long	.LLST54
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x26
	.long	0x9a4
	.long	.LLST55
	.uleb128 0x26
	.long	0x9b0
	.long	.LLST56
	.uleb128 0x2b
	.long	0x9bc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x24
	.long	0x4ce
	.quad	.LBB128
	.long	.Ldebug_ranges0+0x230
	.byte	0x1
	.value	0x11c
	.long	0x1238
	.uleb128 0x2d
	.long	0x4de
	.uleb128 0x2d
	.long	0x4de
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x230
	.uleb128 0x26
	.long	0x4e9
	.long	.LLST57
	.uleb128 0x26
	.long	0x4f4
	.long	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x9c9
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.byte	0x1
	.value	0x119
	.long	0x1352
	.uleb128 0x2a
	.long	0x9d5
	.long	.LLST59
	.uleb128 0x2e
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.uleb128 0x2f
	.long	0x9e0
	.uleb128 0x26
	.long	0x9eb
	.long	.LLST60
	.uleb128 0x26
	.long	0x9f6
	.long	.LLST61
	.uleb128 0x26
	.long	0x9ff
	.long	.LLST62
	.uleb128 0x33
	.long	0xa0b
	.quad	.LBB134
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.byte	0xf6
	.long	0x1319
	.uleb128 0x2a
	.long	0xa17
	.long	.LLST63
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x26
	.long	0xa22
	.long	.LLST64
	.uleb128 0x26
	.long	0xa2d
	.long	.LLST65
	.uleb128 0x26
	.long	0xa38
	.long	.LLST66
	.uleb128 0x26
	.long	0xa41
	.long	.LLST67
	.uleb128 0x26
	.long	0xa4a
	.long	.LLST68
	.uleb128 0x27
	.quad	.LVL145
	.long	0x16b6
	.long	0x1303
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.byte	0x91
	.sleb128 -264
	.byte	0x94
	.byte	0x4
	.byte	0x33
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.uleb128 0x29
	.quad	.LVL152
	.long	0x1772
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL135
	.long	0x16b6
	.long	0x133c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.byte	0x91
	.sleb128 -264
	.byte	0x94
	.byte	0x4
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.quad	.LVL141
	.long	0x1772
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL103
	.long	0x16b6
	.long	0x1369
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.quad	.LVL105
	.long	0x17b5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x736
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.byte	0x1
	.value	0x18f
	.long	0x13c7
	.uleb128 0x2a
	.long	0x760
	.long	.LLST69
	.uleb128 0x2a
	.long	0x756
	.long	.LLST70
	.uleb128 0x2a
	.long	0x74c
	.long	.LLST71
	.uleb128 0x2a
	.long	0x742
	.long	.LLST72
	.byte	0
	.uleb128 0x30
	.long	0x700
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.byte	0x1
	.value	0x18b
	.long	0x1408
	.uleb128 0x2a
	.long	0x72a
	.long	.LLST73
	.uleb128 0x2a
	.long	0x720
	.long	.LLST74
	.uleb128 0x2a
	.long	0x716
	.long	.LLST75
	.uleb128 0x2a
	.long	0x70c
	.long	.LLST76
	.byte	0
	.uleb128 0x30
	.long	0x6ca
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.byte	0x1
	.value	0x187
	.long	0x1449
	.uleb128 0x2a
	.long	0x6f4
	.long	.LLST77
	.uleb128 0x2a
	.long	0x6ea
	.long	.LLST78
	.uleb128 0x2a
	.long	0x6e0
	.long	.LLST79
	.uleb128 0x2a
	.long	0x6d6
	.long	.LLST80
	.byte	0
	.uleb128 0x30
	.long	0x694
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.byte	0x1
	.value	0x183
	.long	0x148a
	.uleb128 0x2a
	.long	0x6be
	.long	.LLST81
	.uleb128 0x2a
	.long	0x6b4
	.long	.LLST82
	.uleb128 0x2a
	.long	0x6aa
	.long	.LLST83
	.uleb128 0x2a
	.long	0x6a0
	.long	.LLST84
	.byte	0
	.uleb128 0x30
	.long	0x57a
	.quad	.LBB149
	.quad	.LBE149-.LBB149
	.byte	0x1
	.value	0x17f
	.long	0x14eb
	.uleb128 0x2d
	.long	0x5b4
	.uleb128 0x2a
	.long	0x5a8
	.long	.LLST85
	.uleb128 0x2a
	.long	0x59d
	.long	.LLST86
	.uleb128 0x2a
	.long	0x592
	.long	.LLST87
	.uleb128 0x2a
	.long	0x587
	.long	.LLST88
	.uleb128 0x2e
	.quad	.LBB150
	.quad	.LBE150-.LBB150
	.uleb128 0x26
	.long	0x5c0
	.long	.LLST89
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x52e
	.quad	.LBB151
	.quad	.LBE151-.LBB151
	.byte	0x1
	.value	0x17b
	.long	0x154c
	.uleb128 0x2d
	.long	0x563
	.uleb128 0x2a
	.long	0x558
	.long	.LLST90
	.uleb128 0x2a
	.long	0x54e
	.long	.LLST91
	.uleb128 0x2a
	.long	0x544
	.long	.LLST92
	.uleb128 0x2a
	.long	0x53a
	.long	.LLST93
	.uleb128 0x2e
	.quad	.LBB152
	.quad	.LBE152-.LBB152
	.uleb128 0x26
	.long	0x56e
	.long	.LLST94
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x65e
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.byte	0x1
	.value	0x177
	.long	0x158d
	.uleb128 0x2a
	.long	0x688
	.long	.LLST95
	.uleb128 0x2a
	.long	0x67e
	.long	.LLST96
	.uleb128 0x2a
	.long	0x674
	.long	.LLST97
	.uleb128 0x2a
	.long	0x66a
	.long	.LLST98
	.byte	0
	.uleb128 0x34
	.long	0x78e
	.quad	.LBB155
	.quad	.LBE155-.LBB155
	.byte	0x1
	.value	0x1a8
	.uleb128 0x2a
	.long	0x7af
	.long	.LLST99
	.uleb128 0x2a
	.long	0x7a4
	.long	.LLST34
	.uleb128 0x2a
	.long	0x79a
	.long	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0xac0
	.quad	.LBB162
	.quad	.LBE162-.LBB162
	.byte	0x1
	.value	0x1c4
	.uleb128 0x2a
	.long	0xacd
	.long	.LLST102
	.uleb128 0x2e
	.quad	.LBB163
	.quad	.LBE163-.LBB163
	.uleb128 0x26
	.long	0xad9
	.long	.LLST103
	.uleb128 0x26
	.long	0xae3
	.long	.LLST104
	.uleb128 0x35
	.quad	.LBB164
	.quad	.LBE164-.LBB164
	.long	0x1649
	.uleb128 0x26
	.long	0xaf0
	.long	.LLST105
	.uleb128 0x32
	.quad	.LVL58
	.long	0x1772
	.uleb128 0x29
	.quad	.LVL59
	.long	0x1772
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL61
	.long	0x1772
	.uleb128 0x27
	.quad	.LVL62
	.long	0x1772
	.long	0x166e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL63
	.long	0x1772
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x31c
	.long	0x1695
	.uleb128 0xd
	.long	0xc4
	.byte	0x7
	.byte	0
	.uleb128 0x36
	.long	.LASF141
	.byte	0x5
	.byte	0xa5
	.long	0x2cb
	.uleb128 0x36
	.long	.LASF142
	.byte	0x5
	.byte	0xa6
	.long	0x2cb
	.uleb128 0x36
	.long	.LASF143
	.byte	0x5
	.byte	0xa7
	.long	0x2cb
	.uleb128 0x37
	.long	.LASF144
	.byte	0x9
	.value	0x1d7
	.long	0xd6
	.long	0x16cc
	.uleb128 0x38
	.long	0x29
	.byte	0
	.uleb128 0x37
	.long	.LASF145
	.byte	0x2
	.value	0x193
	.long	0x5e
	.long	0x16ec
	.uleb128 0x38
	.long	0x5e
	.uleb128 0x38
	.long	0x303
	.uleb128 0x38
	.long	0x5f7
	.byte	0
	.uleb128 0x37
	.long	.LASF146
	.byte	0x6
	.value	0x1cc
	.long	0x5e
	.long	0x1702
	.uleb128 0x38
	.long	0x1702
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f7
	.uleb128 0x39
	.long	.LASF147
	.byte	0x5
	.byte	0xec
	.long	0x5e
	.long	0x171d
	.uleb128 0x38
	.long	0x847
	.byte	0
	.uleb128 0x37
	.long	.LASF148
	.byte	0x5
	.value	0x10f
	.long	0x847
	.long	0x1738
	.uleb128 0x38
	.long	0x303
	.uleb128 0x38
	.long	0x303
	.byte	0
	.uleb128 0x3a
	.long	.LASF160
	.byte	0xa
	.byte	0
	.long	.LASF161
	.long	0x34
	.long	0x1760
	.uleb128 0x38
	.long	0x315
	.uleb128 0x38
	.long	0x34
	.uleb128 0x38
	.long	0x34
	.uleb128 0x38
	.long	0xd6
	.byte	0
	.uleb128 0x3b
	.long	.LASF149
	.byte	0x9
	.value	0x220
	.long	0x1772
	.uleb128 0x38
	.long	0x5e
	.byte	0
	.uleb128 0x3b
	.long	.LASF150
	.byte	0x9
	.value	0x1e8
	.long	0x1784
	.uleb128 0x38
	.long	0xd6
	.byte	0
	.uleb128 0x37
	.long	.LASF151
	.byte	0x5
	.value	0x217
	.long	0x5e
	.long	0x179a
	.uleb128 0x38
	.long	0x847
	.byte	0
	.uleb128 0x37
	.long	.LASF152
	.byte	0x5
	.value	0x241
	.long	0x5e
	.long	0x17b5
	.uleb128 0x38
	.long	0x5e
	.uleb128 0x38
	.long	0x847
	.byte	0
	.uleb128 0x3c
	.long	.LASF153
	.byte	0x9
	.value	0x1d9
	.long	0xd6
	.uleb128 0x38
	.long	0x29
	.uleb128 0x38
	.long	0x29
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL23
	.value	0x1
	.byte	0x5c
	.quad	.LVL23
	.quad	.LVL153
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL153
	.quad	.LFE30
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2-1
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1
	.quad	.LVL30
	.value	0x1
	.byte	0x5e
	.quad	.LVL30
	.quad	.LVL153
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL153
	.quad	.LFE30
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3
	.quad	.LVL4-1
	.value	0x1
	.byte	0x50
	.quad	.LVL4-1
	.quad	.LVL64
	.value	0x1
	.byte	0x5d
	.quad	.LVL66
	.quad	.LFE30
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x4
	.byte	0xa
	.value	0x3e7
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL8
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL9
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL9
	.quad	.LVL10
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL11
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x35
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x36
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL13
	.value	0x7
	.byte	0x72
	.sleb128 1
	.byte	0x35
	.byte	0x1e
	.byte	0x36
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x7
	.byte	0xa
	.value	0x3e6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL16
	.value	0x7
	.byte	0xa
	.value	0x3e5
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL17
	.value	0x9
	.byte	0xa
	.value	0x3e5
	.byte	0x72
	.sleb128 20
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
	.value	0x1
	.byte	0x58
	.quad	.LVL15
	.quad	.LVL17
	.value	0x2
	.byte	0x72
	.sleb128 12
	.quad	.LVL18
	.quad	.LVL20-1
	.value	0x1
	.byte	0x51
	.quad	.LVL158
	.quad	.LVL159
	.value	0x1
	.byte	0x51
	.quad	.LVL159
	.quad	.LVL160-1
	.value	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL19
	.quad	.LVL64
	.value	0x1
	.byte	0x5d
	.quad	.LVL66
	.quad	.LFE30
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL19
	.quad	.LVL30
	.value	0x1
	.byte	0x5e
	.quad	.LVL30
	.quad	.LVL153
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL153
	.quad	.LFE30
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL19
	.quad	.LVL23
	.value	0x1
	.byte	0x5c
	.quad	.LVL23
	.quad	.LVL153
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL153
	.quad	.LFE30
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL21
	.quad	.LVL22-1
	.value	0x1
	.byte	0x50
	.quad	.LVL22-1
	.quad	.LVL50
	.value	0x1
	.byte	0x5f
	.quad	.LVL153
	.quad	.LVL158
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL24
	.quad	.LVL30
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL21
	.quad	.LVL22-1
	.value	0x1
	.byte	0x51
	.quad	.LVL22-1
	.quad	.LVL158
	.value	0x4
	.byte	0x91
	.sleb128 -208
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL21
	.quad	.LVL22-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL24
	.quad	.LVL64
	.value	0x1
	.byte	0x5d
	.quad	.LVL66
	.quad	.LVL153
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL24
	.quad	.LVL50
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x50
	.quad	.LVL27-1
	.quad	.LVL49
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL28
	.quad	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x1
	.byte	0x50
	.quad	.LVL33-1
	.quad	.LVL35
	.value	0x1
	.byte	0x5e
	.quad	.LVL35
	.quad	.LVL43
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL29
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL34
	.quad	.LVL37-1
	.value	0x1
	.byte	0x50
	.quad	.LVL37
	.quad	.LVL40-1
	.value	0x1
	.byte	0x50
	.quad	.LVL40
	.quad	.LVL42-1
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL44
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL28
	.quad	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL45
	.quad	.LVL153
	.value	0x4
	.byte	0xa
	.value	0x3e7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL46
	.quad	.LVL64
	.value	0x1
	.byte	0x5d
	.quad	.LVL66
	.quad	.LVL153
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL46
	.quad	.LVL153
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL46
	.quad	.LVL50
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL53
	.value	0x1
	.byte	0x5e
	.quad	.LVL66
	.quad	.LVL81
	.value	0x1
	.byte	0x5e
	.quad	.LVL82
	.quad	.LVL153
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL47
	.quad	.LVL56
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x50
	.quad	.LVL83
	.quad	.LVL84-1
	.value	0x1
	.byte	0x50
	.quad	.LVL87
	.quad	.LVL90-1
	.value	0x1
	.byte	0x50
	.quad	.LVL91
	.quad	.LVL95-1
	.value	0x1
	.byte	0x50
	.quad	.LVL99
	.quad	.LVL103-1
	.value	0x1
	.byte	0x50
	.quad	.LVL110
	.quad	.LVL111
	.value	0x1
	.byte	0x50
	.quad	.LVL112
	.quad	.LVL113
	.value	0x1
	.byte	0x50
	.quad	.LVL115
	.quad	.LVL116
	.value	0x1
	.byte	0x50
	.quad	.LVL117
	.quad	.LVL118
	.value	0x1
	.byte	0x50
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x50
	.quad	.LVL123
	.quad	.LVL124
	.value	0x1
	.byte	0x50
	.quad	.LVL127
	.quad	.LVL128
	.value	0x1
	.byte	0x50
	.quad	.LVL129
	.quad	.LVL131
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL47
	.quad	.LVL153
	.value	0x5
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL47
	.quad	.LVL129
	.value	0x4
	.byte	0xa
	.value	0x1c0
	.byte	0x9f
	.quad	.LVL129
	.quad	.LVL132
	.value	0x4
	.byte	0x4c
	.byte	0x47
	.byte	0x24
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL153
	.value	0x4
	.byte	0xa
	.value	0x1c0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL47
	.quad	.LVL153
	.value	0x3
	.byte	0x8
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL47
	.quad	.LVL153
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL48
	.quad	.LVL56
	.value	0x1
	.byte	0x51
	.quad	.LVL66
	.quad	.LVL70-1
	.value	0x1
	.byte	0x51
	.quad	.LVL83
	.quad	.LVL84-1
	.value	0x1
	.byte	0x51
	.quad	.LVL88
	.quad	.LVL90-1
	.value	0x1
	.byte	0x51
	.quad	.LVL91
	.quad	.LVL95-1
	.value	0x1
	.byte	0x51
	.quad	.LVL99
	.quad	.LVL100
	.value	0x1
	.byte	0x51
	.quad	.LVL110
	.quad	.LVL114
	.value	0x1
	.byte	0x51
	.quad	.LVL115
	.quad	.LVL121
	.value	0x1
	.byte	0x51
	.quad	.LVL123
	.quad	.LVL125
	.value	0x1
	.byte	0x51
	.quad	.LVL127
	.quad	.LVL130
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL51
	.quad	.LVL53
	.value	0x1
	.byte	0x52
	.quad	.LVL66
	.quad	.LVL70-1
	.value	0x1
	.byte	0x52
	.quad	.LVL83
	.quad	.LVL84-1
	.value	0x1
	.byte	0x52
	.quad	.LVL89
	.quad	.LVL90-1
	.value	0x1
	.byte	0x52
	.quad	.LVL91
	.quad	.LVL95-1
	.value	0x1
	.byte	0x52
	.quad	.LVL99
	.quad	.LVL103-1
	.value	0x1
	.byte	0x52
	.quad	.LVL110
	.quad	.LVL122
	.value	0x1
	.byte	0x52
	.quad	.LVL123
	.quad	.LVL133
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL52
	.quad	.LVL53
	.value	0x1
	.byte	0x5c
	.quad	.LVL66
	.quad	.LVL74
	.value	0x1
	.byte	0x5c
	.quad	.LVL83
	.quad	.LVL85
	.value	0x1
	.byte	0x5c
	.quad	.LVL89
	.quad	.LVL92
	.value	0x1
	.byte	0x5c
	.quad	.LVL92
	.quad	.LVL95-1
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL153
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL52
	.quad	.LVL53
	.value	0x1
	.byte	0x5f
	.quad	.LVL66
	.quad	.LVL85
	.value	0x1
	.byte	0x5f
	.quad	.LVL89
	.quad	.LVL93
	.value	0x1
	.byte	0x5f
	.quad	.LVL93
	.quad	.LVL95-1
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL104
	.value	0x1
	.byte	0x5f
	.quad	.LVL110
	.quad	.LVL133
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL129
	.quad	.LVL131
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x47
	.byte	0x24
	.byte	0x1a
	.byte	0x49
	.byte	0x25
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL129
	.quad	.LVL132
	.value	0x6
	.byte	0xc
	.long	0x1ffffff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL129
	.quad	.LVL131
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0xc
	.long	0x1ffffff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL131
	.quad	.LVL132
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL66
	.quad	.LVL83
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL66
	.quad	.LVL74
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL68
	.quad	.LVL80
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL69
	.quad	.LVL72
	.value	0x1
	.byte	0x53
	.quad	.LVL74
	.quad	.LVL75-1
	.value	0x1
	.byte	0x50
	.quad	.LVL75-1
	.quad	.LVL80
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL72
	.quad	.LVL80
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL76
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x51
	.quad	.LVL78
	.quad	.LVL79
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL83
	.quad	.LVL85
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL83
	.quad	.LVL85
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL84
	.quad	.LVL85
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL89
	.quad	.LVL91
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL89
	.quad	.LVL91
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL91
	.quad	.LVL99
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL91
	.quad	.LVL99
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL91
	.quad	.LVL93
	.value	0x1
	.byte	0x5f
	.quad	.LVL93
	.quad	.LVL95-1
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL94
	.quad	.LVL97
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL98
	.quad	.LVL99
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL101
	.quad	.LVL110
	.value	0x1
	.byte	0x5d
	.quad	.LVL133
	.quad	.LVL153
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL101
	.quad	.LVL110
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	.LVL133
	.quad	.LVL153
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL101
	.quad	.LVL104
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL101
	.quad	.LVL110
	.value	0x1
	.byte	0x5c
	.quad	.LVL133
	.quad	.LVL153
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL102
	.quad	.LVL106
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	.LVL133
	.quad	.LVL134
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL104
	.quad	.LVL105-1
	.value	0x1
	.byte	0x50
	.quad	.LVL105-1
	.quad	.LVL110
	.value	0x1
	.byte	0x5f
	.quad	.LVL133
	.quad	.LVL153
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL107
	.quad	.LVL109
	.value	0x1
	.byte	0x51
	.quad	.LVL109
	.quad	.LVL110
	.value	0x2
	.byte	0x7d
	.sleb128 8
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL108
	.quad	.LVL110
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL133
	.quad	.LVL153
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL135
	.quad	.LVL141-1
	.value	0x1
	.byte	0x50
	.quad	.LVL141-1
	.quad	.LVL142
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL135
	.quad	.LVL136
	.value	0x8
	.byte	0x91
	.sleb128 -264
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL137
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL138
	.quad	.LVL139
	.value	0x1
	.byte	0x54
	.quad	.LVL139
	.quad	.LVL140
	.value	0x8
	.byte	0x91
	.sleb128 -264
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	.LVL140
	.quad	.LVL141-1
	.value	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	.LVL141-1
	.quad	.LVL144
	.value	0x8
	.byte	0x91
	.sleb128 -256
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	.LVL144
	.quad	.LVL149
	.value	0xa
	.byte	0x91
	.sleb128 -244
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL143
	.quad	.LVL153
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL143
	.quad	.LVL145-1
	.value	0x1
	.byte	0x58
	.quad	.LVL145-1
	.quad	.LVL151
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL144
	.quad	.LVL145-1
	.value	0x1
	.byte	0x54
	.quad	.LVL145-1
	.quad	.LVL150
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.quad	.LVL150
	.quad	.LVL151
	.value	0x8
	.byte	0x91
	.sleb128 -264
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL144
	.quad	.LVL145-1
	.value	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL145-1
	.quad	.LVL146
	.value	0x8
	.byte	0x91
	.sleb128 -256
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL144
	.quad	.LVL148
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL145
	.quad	.LVL152-1
	.value	0x1
	.byte	0x50
	.quad	.LVL152-1
	.quad	.LVL153
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL110
	.quad	.LVL112
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL110
	.quad	.LVL112
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL110
	.quad	.LVL112
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL110
	.quad	.LVL112
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL112
	.quad	.LVL115
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL112
	.quad	.LVL115
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL112
	.quad	.LVL115
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL112
	.quad	.LVL115
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL115
	.quad	.LVL117
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL115
	.quad	.LVL117
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL115
	.quad	.LVL117
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL115
	.quad	.LVL117
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL119
	.quad	.LVL123
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST86:
	.quad	.LVL119
	.quad	.LVL123
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL119
	.quad	.LVL123
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST88:
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST89:
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1d
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xf0
	.byte	0x1c
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST90:
	.quad	.LVL123
	.quad	.LVL127
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL123
	.quad	.LVL127
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL123
	.quad	.LVL127
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST93:
	.quad	.LVL123
	.quad	.LVL127
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL123
	.quad	.LVL126
	.value	0x1d
	.byte	0x7c
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xf0
	.byte	0x1c
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST96:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST97:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST98:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL129
	.quad	.LVL132
	.value	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.quad	0
	.quad	0
.LLST102:
	.quad	.LVL54
	.quad	.LVL64
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST103:
	.quad	.LVL55
	.quad	.LVL56
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL59
	.value	0x1
	.byte	0x56
	.quad	.LVL59
	.quad	.LVL60
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST104:
	.quad	.LVL55
	.quad	.LVL65
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST105:
	.quad	.LVL57
	.quad	.LVL59
	.value	0x1
	.byte	0x5c
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
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB104
	.quad	.LBE104
	.quad	0
	.quad	0
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB166
	.quad	.LBE166
	.quad	0
	.quad	0
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB93
	.quad	.LBE93
	.quad	0
	.quad	0
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB100
	.quad	.LBE100
	.quad	.LBB101
	.quad	.LBE101
	.quad	0
	.quad	0
	.quad	.LBB106
	.quad	.LBE106
	.quad	.LBB165
	.quad	.LBE165
	.quad	0
	.quad	0
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB159
	.quad	.LBE159
	.quad	.LBB160
	.quad	.LBE160
	.quad	0
	.quad	0
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB158
	.quad	.LBE158
	.quad	0
	.quad	0
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB113
	.quad	.LBE113
	.quad	0
	.quad	0
	.quad	.LBB120
	.quad	.LBE120
	.quad	.LBB124
	.quad	.LBE124
	.quad	.LBB125
	.quad	.LBE125
	.quad	0
	.quad	0
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB157
	.quad	.LBE157
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB131
	.quad	.LBE131
	.quad	0
	.quad	0
	.quad	.LBB134
	.quad	.LBE134
	.quad	.LBB138
	.quad	.LBE138
	.quad	.LBB139
	.quad	.LBE139
	.quad	0
	.quad	0
	.quad	.LFB30
	.quad	.LFE30
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF111:
	.string	"file_stats"
.LASF23:
	.string	"_IO_read_ptr"
.LASF144:
	.string	"malloc"
.LASF35:
	.string	"_chain"
.LASF121:
	.string	"ra_mask"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"instruct"
.LASF41:
	.string	"_shortbuf"
.LASF102:
	.string	"division"
.LASF93:
	.string	"__path"
.LASF119:
	.string	"codeword"
.LASF29:
	.string	"_IO_buf_base"
.LASF69:
	.string	"st_blocks"
.LASF88:
	.string	"Stack_push"
.LASF150:
	.string	"free"
.LASF126:
	.string	"map_segment"
.LASF58:
	.string	"stat"
.LASF56:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF96:
	.string	"copied_segment"
.LASF60:
	.string	"st_ino"
.LASF12:
	.string	"__mode_t"
.LASF36:
	.string	"_fileno"
.LASF24:
	.string	"_IO_read_end"
.LASF129:
	.string	"addSequenceIndices"
.LASF85:
	.string	"num_indices"
.LASF19:
	.string	"__blkcnt_t"
.LASF6:
	.string	"long int"
.LASF22:
	.string	"_flags"
.LASF137:
	.string	"removed_segment"
.LASF138:
	.string	"input"
.LASF30:
	.string	"_IO_buf_end"
.LASF39:
	.string	"_cur_column"
.LASF113:
	.string	"initialize_segzero"
.LASF118:
	.string	"program_counter"
.LASF38:
	.string	"_old_offset"
.LASF43:
	.string	"_offset"
.LASF159:
	.string	"main"
.LASF81:
	.string	"unused_ids"
.LASF100:
	.string	"addition"
.LASF65:
	.string	"__pad0"
.LASF154:
	.string	"GNU C 4.8.0 -mtune=generic -march=x86-64 -g -O2 -std=c99"
.LASF139:
	.string	"input_value"
.LASF91:
	.string	"segment"
.LASF8:
	.string	"__dev_t"
.LASF63:
	.string	"st_uid"
.LASF87:
	.string	"value"
.LASF52:
	.string	"_IO_marker"
.LASF141:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF133:
	.string	"Stack_resize"
.LASF0:
	.string	"long unsigned int"
.LASF101:
	.string	"multiply"
.LASF132:
	.string	"new_len"
.LASF27:
	.string	"_IO_write_ptr"
.LASF98:
	.string	"seg_len"
.LASF94:
	.string	"__statbuf"
.LASF54:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF82:
	.string	"top_id"
.LASF131:
	.string	"new_arr"
.LASF110:
	.string	"file_ptr"
.LASF31:
	.string	"_IO_save_base"
.LASF13:
	.string	"__nlink_t"
.LASF151:
	.string	"fgetc"
.LASF155:
	.string	"um.c"
.LASF42:
	.string	"_lock"
.LASF122:
	.string	"rb_mask"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF75:
	.string	"st_ctimensec"
.LASF142:
	.string	"stdout"
.LASF67:
	.string	"st_size"
.LASF76:
	.string	"__unused"
.LASF62:
	.string	"st_mode"
.LASF104:
	.string	"output"
.LASF103:
	.string	"nand"
.LASF107:
	.string	"read_file"
.LASF16:
	.string	"sizetype"
.LASF80:
	.string	"Memory"
.LASF156:
	.string	"/h/zqin01/Desktop/comp40/hw7"
.LASF117:
	.string	"decode"
.LASF105:
	.string	"load_value"
.LASF28:
	.string	"_IO_write_end"
.LASF83:
	.string	"segments"
.LASF157:
	.string	"_IO_lock_t"
.LASF51:
	.string	"_IO_FILE"
.LASF123:
	.string	"rc_mask"
.LASF18:
	.string	"__blksize_t"
.LASF95:
	.string	"load_program"
.LASF115:
	.string	"instruct_byte"
.LASF146:
	.string	"_IO_getc"
.LASF148:
	.string	"fopen"
.LASF55:
	.string	"_pos"
.LASF116:
	.string	"instruction_count"
.LASF34:
	.string	"_markers"
.LASF136:
	.string	"unmap_segment"
.LASF61:
	.string	"st_nlink"
.LASF127:
	.string	"new_segment"
.LASF78:
	.string	"Um_segmentID"
.LASF1:
	.string	"unsigned char"
.LASF97:
	.string	"segment_zero"
.LASF5:
	.string	"short int"
.LASF68:
	.string	"st_blksize"
.LASF77:
	.string	"Um_instruction"
.LASF79:
	.string	"SegArr"
.LASF40:
	.string	"_vtable_offset"
.LASF74:
	.string	"st_ctime"
.LASF128:
	.string	"curr_ID"
.LASF21:
	.string	"FILE"
.LASF89:
	.string	"segmented_load"
.LASF73:
	.string	"st_mtimensec"
.LASF11:
	.string	"__ino_t"
.LASF57:
	.string	"uint32_t"
.LASF134:
	.string	"curr_len"
.LASF66:
	.string	"st_rdev"
.LASF70:
	.string	"st_atime"
.LASF20:
	.string	"char"
.LASF92:
	.string	"segmented_store"
.LASF84:
	.string	"seg_zero"
.LASF86:
	.string	"index"
.LASF160:
	.string	"__builtin_fwrite"
.LASF106:
	.string	"initialize_memory"
.LASF147:
	.string	"fclose"
.LASF9:
	.string	"__uid_t"
.LASF53:
	.string	"_next"
.LASF15:
	.string	"__off64_t"
.LASF120:
	.string	"op_mask"
.LASF25:
	.string	"_IO_read_base"
.LASF125:
	.string	"val_mask"
.LASF33:
	.string	"_IO_save_end"
.LASF152:
	.string	"fputc"
.LASF64:
	.string	"st_gid"
.LASF44:
	.string	"__pad1"
.LASF45:
	.string	"__pad2"
.LASF46:
	.string	"__pad3"
.LASF47:
	.string	"__pad4"
.LASF48:
	.string	"__pad5"
.LASF112:
	.string	"totalwords"
.LASF17:
	.string	"__time_t"
.LASF50:
	.string	"_unused2"
.LASF143:
	.string	"stderr"
.LASF149:
	.string	"exit"
.LASF153:
	.string	"calloc"
.LASF59:
	.string	"st_dev"
.LASF32:
	.string	"_IO_backup_base"
.LASF90:
	.string	"registers"
.LASF71:
	.string	"st_atimensec"
.LASF135:
	.string	"new_stack"
.LASF161:
	.string	"fwrite"
.LASF108:
	.string	"argc"
.LASF140:
	.string	"free_memory"
.LASF145:
	.string	"__xstat"
.LASF109:
	.string	"argv"
.LASF26:
	.string	"_IO_write_base"
.LASF158:
	.string	"Stack_pop"
.LASF72:
	.string	"st_mtime"
.LASF130:
	.string	"total_len"
.LASF124:
	.string	"opcode"
.LASF99:
	.string	"cond_move"
	.ident	"GCC: (GNU) 4.8.0"
	.section	.note.GNU-stack,"",@progbits
