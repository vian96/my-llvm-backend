	.file	"test.ll"
	.text
	.globl	main                            ; -- Begin function main
	.type	main,@function
main:                                   ; @main
; %bb.0:
	MOVhi r2 65535
	ORi r2 r2 65535
	MOVli r4 5
	MOVli r9 4
	PUTPIXEL r9 r4 r2
	FLUSH
	RAND r9
	BR r0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ; -- End function
	.section	".note.GNU-stack","",@progbits
