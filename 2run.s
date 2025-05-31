	.file	"top"
	.text
	.globl	app                             ; -- Begin function app
	.type	app,@function
app:                                    ; @app
; %bb.0:                                ; %entry
	STORE r0, [r1]                          ; 4-byte Folded Spill
	STORE r3, [r1]                          ; 4-byte Folded Spill
	STORE r5, [r1]                          ; 4-byte Folded Spill
	STORE r6, [r1]                          ; 4-byte Folded Spill
	STORE r7, [r1]                          ; 4-byte Folded Spill
	STORE r8, [r1]                          ; 4-byte Folded Spill
	MOVli r14 0
	MOVhi r2 65535
	ORi r4 r2 65036
	STORE r4, [r1]                          ; 4-byte Folded Spill
	ORi r4 r2 65037
	STORE r4, [r1]                          ; 4-byte Folded Spill
	ORi r4 r2 64836
	STORE r4, [r1]                          ; 4-byte Folded Spill
	ORi r4 r2 64837
	STORE r4, [r1]                          ; 4-byte Folded Spill
	ORi r13 r2 65535
	ORi r2 r2 65186
	STORE r2, [r1]                          ; 4-byte Folded Spill
	MOVhi r2 65280
	ORi r2 r2 255
	STORE r2, [r1]                          ; 4-byte Folded Spill
	MOVhi r2 15
	ORi r2 r2 16960
	STORE r2, [r1]                          ; 4-byte Folded Spill
	MOVli r3 0
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	DIVi r2 r3 100
	LOAD r4, [r1]                           ; 4-byte Folded Reload
	ADD r2 r2 r4
	LOAD r4, [r1]                           ; 4-byte Folded Reload
	MYSETULT r2 r2 r4
	DIVi r4 r14 100
	LOAD r9, [r1]                           ; 4-byte Folded Reload
	ADD r4 r4 r9
	LOAD r9, [r1]                           ; 4-byte Folded Reload
	MYSETULT r4 r4 r9
	OR r2 r4 r2
	ANDi r2 r2 1
	ADD r2 r2 r13
	INC_EQi r2 r2 0
	BR_COND r2 .LBB0_3
	B .LBB0_2
.LBB0_2:                                ;   in Loop: Header=BB0_1 Depth=1
	RAND r9
	DIVi r2 r9 700
	MULi r2 r2 700
	SUB r2 r9 r2
	DIVi r4 r9 500
	MULi r4 r4 500
	SUB r4 r9 r4
	MULi r4 r4 100
	ADDi r3 r4 25000
	MULi r2 r2 100
	ADDi r14 r2 35000
.LBB0_3:                                ;   in Loop: Header=BB0_1 Depth=1
	LOAD r2, [r1]                           ; 4-byte Folded Reload
	MUL r2 r3 r2
	MUL r4 r3 r14
	DIVi r4 r4 100
	ADD r2 r4 r2
	MULi r9 r14 250
	SUB r4 r9 r4
	DIVi r9 r2 10000
	STORE r9, [r1]                          ; 4-byte Folded Spill
	ABS r9 r9
	DIVi r10 r4 10000
	STORE r10, [r1]                         ; 4-byte Folded Spill
	ABS r10 r10
	ADD r9 r9 r10
	SHLi r9 r9 16
	LOAD r10, [r1]                          ; 4-byte Folded Reload
	ADD r7 r9 r10
	LOAD r9, [r1]                           ; 4-byte Folded Reload
	DIV r8 r2 r9
	DIV r2 r4 r9
	MOVli r4 0
	DIVi r9 r3 100
	DIVi r10 r14 100
	MOVli r12 0
	ORi r11 r13 0
.LBB0_4:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	DIVi r15 r4 10
	ADD r0 r15 r10
	DIVi r15 r12 10
	ADD r15 r15 r9
	ADD r5 r15 r13
	MYSETULTi r5 r5 499
	ADD r6 r0 r13
	MYSETULTi r6 r6 699
	AND r5 r6 r5
	ANDi r5 r5 1
	ADD r5 r5 r13
	INC_EQi r5 r5 0
	BR_COND r5 .LBB0_6
	B .LBB0_5
.LBB0_5:                                ;   in Loop: Header=BB0_4 Depth=2
	PUTPIXEL r0 r15 r7
.LBB0_6:                                ;   in Loop: Header=BB0_4 Depth=2
	INC_LTi r15 r11 9
	ADD r4 r4 r2
	ADD r12 r12 r8
	BR_COND r15 .LBB0_4
	B .LBB0_7
.LBB0_7:                                ; %drawLine.exit
                                        ;   in Loop: Header=BB0_1 Depth=1
	LOAD r2, [r1]                           ; 4-byte Folded Reload
	ADD r3 r2 r3
	LOAD r2, [r1]                           ; 4-byte Folded Reload
	ADD r14 r2 r14
	FLUSH
	B .LBB0_1
.Lfunc_end0:
	.size	app, .Lfunc_end0-app
                                        ; -- End function
	.section	".note.GNU-stack","",@progbits
