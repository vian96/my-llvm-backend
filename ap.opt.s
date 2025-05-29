	.file	"app.ll"
	.text
	.globl	main                            ; -- Begin function main
	.type	main,@function
main:                                   ; @main
; %bb.0:                                ; %entry
	MOVli r2 0
	RAND r4
	MOVhi r9 65535
	ORi r9 r9 65535
.LBB0_1:                                ; %loop_body
                                        ; =>This Inner Loop Header: Depth=1
	PUTPIXEL r4 r2 r9
	INC_NEi r10 r2 100
	FLUSH
	BR_COND r10 .LBB0_1
	B .LBB0_2
.LBB0_2:                                ; %loop_exit
	RAND r9
	BR r0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ; -- End function
	.section	".note.GNU-stack","",@progbits
