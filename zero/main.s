	.file	"main.cc"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZN7speedup10XMLElementC2Ev,"axG",@progbits,_ZN7speedup10XMLElementC5Ev,comdat
	.align 2
	.weak	_ZN7speedup10XMLElementC2Ev
	.type	_ZN7speedup10XMLElementC2Ev, @function
_ZN7speedup10XMLElementC2Ev:
.LFB1264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1264:
	.size	_ZN7speedup10XMLElementC2Ev, .-_ZN7speedup10XMLElementC2Ev
	.weak	_ZN7speedup10XMLElementC1Ev
	.set	_ZN7speedup10XMLElementC1Ev,_ZN7speedup10XMLElementC2Ev
	.section	.text._ZN7speedup10XMLElement8CopyFromERKS0_,"axG",@progbits,_ZN7speedup10XMLElement8CopyFromERKS0_,comdat
	.align 2
	.weak	_ZN7speedup10XMLElement8CopyFromERKS0_
	.type	_ZN7speedup10XMLElement8CopyFromERKS0_, @function
_ZN7speedup10XMLElement8CopyFromERKS0_:
.LFB1267:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1267:
	.size	_ZN7speedup10XMLElement8CopyFromERKS0_, .-_ZN7speedup10XMLElement8CopyFromERKS0_
	.section	.text._ZN7speedup5EventC2ENS_9EventTypeE,"axG",@progbits,_ZN7speedup5EventC5ENS_9EventTypeE,comdat
	.align 2
	.weak	_ZN7speedup5EventC2ENS_9EventTypeE
	.type	_ZN7speedup5EventC2ENS_9EventTypeE, @function
_ZN7speedup5EventC2ENS_9EventTypeE:
.LFB1272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN7speedup10XMLElementC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1272:
	.size	_ZN7speedup5EventC2ENS_9EventTypeE, .-_ZN7speedup5EventC2ENS_9EventTypeE
	.weak	_ZN7speedup5EventC1ENS_9EventTypeE
	.set	_ZN7speedup5EventC1ENS_9EventTypeE,_ZN7speedup5EventC2ENS_9EventTypeE
	.section	.text._ZN7speedup5Event8CopyFromERKS0_,"axG",@progbits,_ZN7speedup5Event8CopyFromERKS0_,comdat
	.align 2
	.weak	_ZN7speedup5Event8CopyFromERKS0_
	.type	_ZN7speedup5Event8CopyFromERKS0_, @function
_ZN7speedup5Event8CopyFromERKS0_:
.LFB1274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN7speedup10XMLElement8CopyFromERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1274:
	.size	_ZN7speedup5Event8CopyFromERKS0_, .-_ZN7speedup5Event8CopyFromERKS0_
	.section	.text._ZN7speedup9EventList9PushEventERKNS_5EventE,"axG",@progbits,_ZN7speedup9EventList9PushEventERKNS_5EventE,comdat
	.align 2
	.weak	_ZN7speedup9EventList9PushEventERKNS_5EventE
	.type	_ZN7speedup9EventList9PushEventERKNS_5EventE, @function
_ZN7speedup9EventList9PushEventERKNS_5EventE:
.LFB1280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	6120(%rax), %eax
	cmpl	$254, %eax
	jg	.L7
	movq	-8(%rbp), %rax
	movl	6120(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-8(%rbp), %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7speedup5Event8CopyFromERKS0_
	movq	-8(%rbp), %rax
	movl	6120(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 6120(%rax)
.L7:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1280:
	.size	_ZN7speedup9EventList9PushEventERKNS_5EventE, .-_ZN7speedup9EventList9PushEventERKNS_5EventE
	.section	.text._ZN7speedup12ParseElementEPKci,"axG",@progbits,_ZN7speedup12ParseElementEPKci,comdat
	.weak	_ZN7speedup12ParseElementEPKci
	.type	_ZN7speedup12ParseElementEPKci, @function
_ZN7speedup12ParseElementEPKci:
.LFB1281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1281:
	.size	_ZN7speedup12ParseElementEPKci, .-_ZN7speedup12ParseElementEPKci
	.section	.text._ZN7speedup9XMLParser11ClearStreamEv,"axG",@progbits,_ZN7speedup9XMLParser11ClearStreamEv,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser11ClearStreamEv
	.type	_ZN7speedup9XMLParser11ClearStreamEv, @function
_ZN7speedup9XMLParser11ClearStreamEv:
.LFB1285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1285:
	.size	_ZN7speedup9XMLParser11ClearStreamEv, .-_ZN7speedup9XMLParser11ClearStreamEv
	.section	.text._ZN7speedup9XMLParser16CallStartElementEv,"axG",@progbits,_ZN7speedup9XMLParser16CallStartElementEv,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser16CallStartElementEv
	.type	_ZN7speedup9XMLParser16CallStartElementEv, @function
_ZN7speedup9XMLParser16CallStartElementEv:
.LFB1289:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	32(%rax), %edx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN7speedup12ParseElementEPKci
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	leaq	-48(%rbp), %rax
	leaq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7speedup10XMLElement8CopyFromERKS0_
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7speedup9EventList9PushEventERKNS_5EventE
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser11ClearStreamEv
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1289:
	.size	_ZN7speedup9XMLParser16CallStartElementEv, .-_ZN7speedup9XMLParser16CallStartElementEv
	.section	.text._ZN7speedup9XMLParser14CallEndElementEv,"axG",@progbits,_ZN7speedup9XMLParser14CallEndElementEv,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser14CallEndElementEv
	.type	_ZN7speedup9XMLParser14CallEndElementEv, @function
_ZN7speedup9XMLParser14CallEndElementEv:
.LFB1290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	32(%rax), %edx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN7speedup12ParseElementEPKci
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	leaq	-48(%rbp), %rax
	leaq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7speedup10XMLElement8CopyFromERKS0_
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7speedup9EventList9PushEventERKNS_5EventE
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser11ClearStreamEv
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1290:
	.size	_ZN7speedup9XMLParser14CallEndElementEv, .-_ZN7speedup9XMLParser14CallEndElementEv
	.section	.text._ZN7speedup9XMLParser12CharOnMarkupEc,"axG",@progbits,_ZN7speedup9XMLParser12CharOnMarkupEc,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser12CharOnMarkupEc
	.type	_ZN7speedup9XMLParser12CharOnMarkupEc, @function
_ZN7speedup9XMLParser12CharOnMarkupEc:
.LFB1292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$16, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movsbl	-28(%rbp), %eax
	cmpl	$32, %eax
	je	.L22
	cmpl	$32, %eax
	jg	.L19
	subl	$9, %eax
	cmpl	$1, %eax
	ja	.L17
	jmp	.L22
.L19:
	cmpl	$47, %eax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rsi, 24(%rax)
	movl	$_ZN7speedup9XMLParser15CharOnEndMarkupEc, %edx
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	jmp	.L21
.L17:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movsbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser17CharOnStartMarkupEc
	movl	$_ZN7speedup9XMLParser17CharOnStartMarkupEc, %r12d
	movl	$0, %r13d
	movq	-24(%rbp), %rax
	movq	%r12, (%rax)
	movq	%r13, 8(%rax)
	jmp	.L21
.L22:
	nop
.L21:
	nop
	addq	$16, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1292:
	.size	_ZN7speedup9XMLParser12CharOnMarkupEc, .-_ZN7speedup9XMLParser12CharOnMarkupEc
	.section	.text._ZN7speedup9XMLParser17CharOnStartMarkupEc,"axG",@progbits,_ZN7speedup9XMLParser17CharOnStartMarkupEc,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser17CharOnStartMarkupEc
	.type	_ZN7speedup9XMLParser17CharOnStartMarkupEc, @function
_ZN7speedup9XMLParser17CharOnStartMarkupEc:
.LFB1293:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movb	%sil, -28(%rbp)
	movsbl	-28(%rbp), %esi
	cmpl	$47, %esi
	je	.L30
	cmpl	$62, %esi
	je	.L26
	cmpl	$34, %esi
	je	.L27
	jmp	.L29
.L26:
	movl	$_ZN7speedup9XMLParser13CharOnContentEc, %ecx
	movl	$0, %ebx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser16CallStartElementEv
	jmp	.L28
.L27:
	movl	$_ZN7speedup9XMLParser15CharOnAttributeEc, %eax
	movl	$0, %edx
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L28
.L29:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L28
.L30:
	nop
.L28:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1293:
	.size	_ZN7speedup9XMLParser17CharOnStartMarkupEc, .-_ZN7speedup9XMLParser17CharOnStartMarkupEc
	.section	.text._ZN7speedup9XMLParser15CharOnEndMarkupEc,"axG",@progbits,_ZN7speedup9XMLParser15CharOnEndMarkupEc,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser15CharOnEndMarkupEc
	.type	_ZN7speedup9XMLParser15CharOnEndMarkupEc, @function
_ZN7speedup9XMLParser15CharOnEndMarkupEc:
.LFB1295:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	cmpl	$32, %eax
	je	.L37
	cmpl	$32, %eax
	jg	.L34
	subl	$9, %eax
	cmpl	$1, %eax
	ja	.L32
	jmp	.L37
.L34:
	cmpl	$62, %eax
	jne	.L32
	movl	$_ZN7speedup9XMLParser13CharOnContentEc, %edx
	movl	$0, %ecx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser14CallEndElementEv
	jmp	.L36
.L32:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L36
.L37:
	nop
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1295:
	.size	_ZN7speedup9XMLParser15CharOnEndMarkupEc, .-_ZN7speedup9XMLParser15CharOnEndMarkupEc
	.section	.text._ZN7speedup9XMLParser13CharOnContentEc,"axG",@progbits,_ZN7speedup9XMLParser13CharOnContentEc,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser13CharOnContentEc
	.type	_ZN7speedup9XMLParser13CharOnContentEc, @function
_ZN7speedup9XMLParser13CharOnContentEc:
.LFB1296:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	cmpl	$32, %eax
	je	.L44
	cmpl	$32, %eax
	jg	.L41
	subl	$9, %eax
	cmpl	$1, %eax
	ja	.L45
	jmp	.L44
.L41:
	cmpl	$60, %eax
	je	.L42
	jmp	.L45
.L42:
	movl	$_ZN7speedup9XMLParser12CharOnMarkupEc, %edx
	movl	$0, %ecx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser8OnMarkupEv
	jmp	.L43
.L44:
	nop
	jmp	.L43
.L45:
	nop
.L43:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1296:
	.size	_ZN7speedup9XMLParser13CharOnContentEc, .-_ZN7speedup9XMLParser13CharOnContentEc
	.section	.text._ZN7speedup9XMLParser15CharOnAttributeEc,"axG",@progbits,_ZN7speedup9XMLParser15CharOnAttributeEc,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser15CharOnAttributeEc
	.type	_ZN7speedup9XMLParser15CharOnAttributeEc, @function
_ZN7speedup9XMLParser15CharOnAttributeEc:
.LFB1297:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %ecx
	movb	%cl, -12(%rbp)
	movsbl	-12(%rbp), %ecx
	cmpl	$34, %ecx
	jne	.L50
	movl	$_ZN7speedup9XMLParser17CharOnStartMarkupEc, %eax
	movl	$0, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L49
.L50:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	nop
.L49:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1297:
	.size	_ZN7speedup9XMLParser15CharOnAttributeEc, .-_ZN7speedup9XMLParser15CharOnAttributeEc
	.section	.text._ZN7speedup9XMLParser8OnMarkupEv,"axG",@progbits,_ZN7speedup9XMLParser8OnMarkupEv,comdat
	.align 2
	.weak	_ZN7speedup9XMLParser8OnMarkupEv
	.type	_ZN7speedup9XMLParser8OnMarkupEv, @function
_ZN7speedup9XMLParser8OnMarkupEv:
.LFB1298:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jle	.L54
	leaq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZN7speedup5EventC1ENS_9EventTypeE
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN7speedup9EventList9PushEventERKNS_5EventE
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7speedup9XMLParser11ClearStreamEv
.L54:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1298:
	.size	_ZN7speedup9XMLParser8OnMarkupEv, .-_ZN7speedup9XMLParser8OnMarkupEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"<xml></xml>"
.LC1:
	.string	"list size : "
.LC2:
	.string	"name len : "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$12600, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-6464(%rbp), %rdx
	movl	$0, %eax
	movl	$771, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$_ZN7speedup9XMLParser13CharOnContentEc, -6464(%rbp)
	leaq	-12592(%rbp), %rdx
	movl	$0, %eax
	movl	$766, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$.LC0+1, %eax
	movq	%rax, -12584(%rbp)
	movl	$3, -12576(%rbp)
	movl	$1, -12568(%rbp)
	movl	$.LC0+7, %eax
	movq	%rax, -12560(%rbp)
	movl	$3, -12552(%rbp)
	movl	$2, -6472(%rbp)
	movl	-6472(%rbp), %ebx
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, -12604(%rbp)
.L57:
	movl	-6472(%rbp), %eax
	cmpl	-12604(%rbp), %eax
	jle	.L56
	leaq	-12592(%rbp), %rcx
	movl	-12604(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -12600(%rbp)
	movq	-12600(%rbp), %rax
	movl	16(%rax), %eax
	movslq	%eax, %rdx
	movq	-12600(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-12600(%rbp), %rax
	movl	16(%rax), %ebx
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	-12600(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movb	$0, -288(%rbp,%rax)
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	addl	$1, -12604(%rbp)
	jmp	.L57
.L56:
	movl	$0, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L59
	call	__stack_chk_fail
.L59:
	addq	$12600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1813:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2159:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L62
	cmpl	$65535, -8(%rbp)
	jne	.L62
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L62:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2159:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2160:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
