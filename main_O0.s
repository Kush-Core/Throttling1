	.build_version macos, 26, 0	sdk_version 26, 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1296
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	x8, #57600                      ; =0xe100
	movk	x8, #1525, lsl #16
	str	x8, [sp, #384]                  ; 8-byte Folded Spill
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	stur	x9, [x29, #-24]
	str	wzr, [sp, #708]
	str	w0, [sp, #704]
	str	x1, [sp, #696]
	str	x8, [sp, #688]
	ldr	w8, [sp, #704]
	subs	w8, w8, #1
	b.le	LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	x8, [sp, #696]
	ldr	x0, [x8, #8]
Ltmp0:
	bl	_atoi
	str	w0, [sp, #380]                  ; 4-byte Folded Spill
Ltmp1:
	b	LBB0_2
LBB0_2:
	ldr	w8, [sp, #380]                  ; 4-byte Folded Reload
	str	w8, [sp, #376]                  ; 4-byte Folded Spill
	b	LBB0_4
LBB0_3:
	mov	w8, #30                         ; =0x1e
	str	w8, [sp, #376]                  ; 4-byte Folded Spill
	b	LBB0_4
LBB0_4:
	ldr	w8, [sp, #376]                  ; 4-byte Folded Reload
	str	w8, [sp, #684]
	ldr	w8, [sp, #704]
	subs	w8, w8, #2
	b.le	LBB0_7
	b	LBB0_5
LBB0_5:
	ldr	x8, [sp, #696]
	ldr	x0, [x8, #16]
Ltmp2:
	bl	_atoi
	str	w0, [sp, #372]                  ; 4-byte Folded Spill
Ltmp3:
	b	LBB0_6
LBB0_6:
	ldr	w8, [sp, #372]                  ; 4-byte Folded Reload
	str	w8, [sp, #368]                  ; 4-byte Folded Spill
	b	LBB0_8
LBB0_7:
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #368]                  ; 4-byte Folded Spill
	b	LBB0_8
LBB0_8:
	ldr	x1, [sp, #384]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #368]                  ; 4-byte Folded Reload
	str	w8, [sp, #680]
Ltmp4:
	add	x0, sp, #656
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em
Ltmp5:
	b	LBB0_9
LBB0_9:
Ltmp7:
	add	x0, sp, #712
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp8:
	b	LBB0_10
LBB0_10:
	add	x0, sp, #656
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x1, x0
Ltmp10:
	add	x0, sp, #712
	mov	x2, #33792                      ; =0x8400
	movk	x2, #6103, lsl #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl
Ltmp11:
	b	LBB0_11
LBB0_11:
	str	wzr, [sp, #640]
	b	LBB0_12
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #640]
	ldr	w9, [sp, #680]
	subs	w8, w8, w9
	b.ge	LBB0_20
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_12 Depth=1
Ltmp118:
	bl	__ZL13clobberMemoryv
Ltmp119:
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_12 Depth=1
	add	x0, sp, #656
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	ldr	x1, [sp, #384]                  ; 8-byte Folded Reload
Ltmp120:
	bl	__ZL6kernelPKfm
	str	d0, [sp, #360]                  ; 8-byte Folded Spill
Ltmp121:
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	d0, [sp, #360]                  ; 8-byte Folded Reload
	add	x0, sp, #632
	str	d0, [sp, #632]
Ltmp122:
	bl	__ZL17doNotOptimizeAwayIdEvRKT_
Ltmp123:
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_12 Depth=1
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #640]
	add	w8, w8, #1
	str	w8, [sp, #640]
	b	LBB0_12
LBB0_18:
Ltmp9:
	str	x0, [sp, #648]
	mov	x8, x1
	str	w8, [sp, #644]
	b	LBB0_97
LBB0_19:
Ltmp124:
	str	x0, [sp, #648]
	mov	x8, x1
	str	w8, [sp, #644]
	b	LBB0_96
LBB0_20:
	add	x0, sp, #608
	str	x0, [sp, #352]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev
	ldr	x0, [sp, #352]                  ; 8-byte Folded Reload
	ldrsw	x1, [sp, #684]
Ltmp12:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
Ltmp13:
	b	LBB0_21
LBB0_21:
	str	wzr, [sp, #604]
	b	LBB0_22
LBB0_22:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #604]
	ldr	w9, [sp, #684]
	subs	w8, w8, w9
	b.ge	LBB0_44
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp85:
	bl	__ZL13clobberMemoryv
Ltmp86:
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_22 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #592]
	add	x0, sp, #656
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	ldr	x1, [sp, #384]                  ; 8-byte Folded Reload
Ltmp87:
	bl	__ZL6kernelPKfm
	str	d0, [sp, #344]                  ; 8-byte Folded Spill
Ltmp88:
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	d0, [sp, #344]                  ; 8-byte Folded Reload
	add	x8, sp, #584
	str	x8, [sp, #336]                  ; 8-byte Folded Spill
	str	d0, [sp, #584]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	ldr	x0, [sp, #336]                  ; 8-byte Folded Reload
	str	x8, [sp, #576]
Ltmp89:
	bl	__ZL17doNotOptimizeAwayIdEvRKT_
Ltmp90:
	b	LBB0_26
LBB0_26:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp91:
	add	x0, sp, #576
	add	x1, sp, #592
	bl	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #328]                  ; 8-byte Folded Spill
Ltmp92:
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	x8, [sp, #328]                  ; 8-byte Folded Reload
	add	x1, sp, #560
	str	x8, [sp, #560]
Ltmp93:
	add	x0, sp, #568
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
Ltmp94:
	b	LBB0_28
LBB0_28:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	d0, [sp, #584]
	mov	x8, #236961935654912            ; =0xd78400000000
	movk	x8, #16791, lsl #48
	fmov	d1, x8
	fsub	d0, d0, d1
	bl	__ZNSt3__16__math3absB9nqe210106Ed
	mov	x8, #43516                      ; =0xa9fc
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.le	LBB0_34
	b	LBB0_29
LBB0_29:
Ltmp111:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #320]                  ; 8-byte Folded Spill
Ltmp112:
	b	LBB0_30
LBB0_30:
	ldr	x0, [sp, #320]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #604]
Ltmp113:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #312]                  ; 8-byte Folded Spill
Ltmp114:
	b	LBB0_31
LBB0_31:
Ltmp115:
	ldr	x0, [sp, #312]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp116:
	b	LBB0_32
LBB0_32:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #708]
	str	w8, [sp, #556]
	b	LBB0_92
LBB0_33:
Ltmp117:
	str	x0, [sp, #648]
	mov	x8, x1
	str	w8, [sp, #644]
	b	LBB0_95
LBB0_34:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp95:
	add	x0, sp, #568
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	str	d0, [sp, #304]                  ; 8-byte Folded Spill
Ltmp96:
	b	LBB0_35
LBB0_35:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	d0, [sp, #304]                  ; 8-byte Folded Reload
	add	x1, sp, #544
	str	d0, [sp, #544]
Ltmp97:
	add	x0, sp, #608
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd
Ltmp98:
	b	LBB0_36
LBB0_36:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp99:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
Ltmp100:
	b	LBB0_37
LBB0_37:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	x0, [sp, #296]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #604]
Ltmp101:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #288]                  ; 8-byte Folded Spill
Ltmp102:
	b	LBB0_38
LBB0_38:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp103:
	ldr	x0, [sp, #288]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #280]                  ; 8-byte Folded Spill
Ltmp104:
	b	LBB0_39
LBB0_39:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp105:
	add	x0, sp, #568
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	str	d0, [sp, #272]                  ; 8-byte Folded Spill
Ltmp106:
	b	LBB0_40
LBB0_40:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp107:
	ldr	d0, [sp, #272]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
Ltmp108:
	b	LBB0_41
LBB0_41:                                ;   in Loop: Header=BB0_22 Depth=1
Ltmp109:
	ldr	x0, [sp, #264]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp110:
	b	LBB0_42
LBB0_42:                                ;   in Loop: Header=BB0_22 Depth=1
	b	LBB0_43
LBB0_43:                                ;   in Loop: Header=BB0_22 Depth=1
	ldr	w8, [sp, #604]
	add	w8, w8, #1
	str	w8, [sp, #604]
	b	LBB0_22
LBB0_44:
Ltmp14:
	add	x0, sp, #520
	add	x1, sp, #608
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_
Ltmp15:
	b	LBB0_45
LBB0_45:
	add	x0, sp, #520
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	str	x8, [sp, #512]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	str	x0, [sp, #504]
	ldr	x0, [sp, #512]
	ldr	x1, [sp, #504]
Ltmp16:
	bl	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_
Ltmp17:
	b	LBB0_46
LBB0_46:
	add	x0, sp, #520
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev
	ldr	d0, [x0]
	str	d0, [sp, #496]
	movi.2d	v0, #0000000000000000
	str	d0, [sp, #488]
	add	x8, sp, #608
	str	x8, [sp, #480]
	ldr	x0, [sp, #480]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	str	x0, [sp, #472]
	ldr	x0, [sp, #480]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	str	x0, [sp, #464]
	b	LBB0_47
LBB0_47:                                ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #472
	add	x1, sp, #464
	bl	__ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB0_51
	b	LBB0_48
LBB0_48:                                ;   in Loop: Header=BB0_47 Depth=1
	add	x0, sp, #472
	bl	__ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev
	ldr	d0, [x0]
	str	d0, [sp, #456]
	ldr	d1, [sp, #456]
	ldr	d0, [sp, #488]
	fadd	d0, d0, d1
	str	d0, [sp, #488]
	b	LBB0_49
LBB0_49:                                ;   in Loop: Header=BB0_47 Depth=1
	add	x0, sp, #472
	bl	__ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev
	b	LBB0_47
LBB0_50:
Ltmp84:
	str	x0, [sp, #648]
	mov	x8, x1
	str	w8, [sp, #644]
	add	x0, sp, #520
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	b	LBB0_95
LBB0_51:
	add	x0, sp, #608
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	ucvtf	d1, x0
	ldr	d0, [sp, #488]
	fdiv	d0, d0, d1
	str	d0, [sp, #488]
	add	x0, sp, #520
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	str	x0, [sp, #448]
	ldr	x8, [sp, #448]
	mov	x10, #2                         ; =0x2
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	cbnz	x8, LBB0_53
	b	LBB0_52
LBB0_52:
	ldr	x8, [sp, #448]
	mov	x9, #2                          ; =0x2
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	udiv	x8, x8, x9
	subs	x1, x8, #1
	add	x0, sp, #520
	str	x0, [sp, #232]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #232]                  ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp, #240]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #448]
	udiv	x1, x8, x9
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	ldr	d0, [sp, #240]                  ; 8-byte Folded Reload
	ldr	d1, [x0]
	fadd	d0, d0, d1
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	b	LBB0_54
LBB0_53:
	ldr	x8, [sp, #448]
	mov	x9, #2                          ; =0x2
	udiv	x1, x8, x9
	add	x0, sp, #520
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	ldr	d0, [x0]
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	b	LBB0_54
LBB0_54:
	ldr	d0, [sp, #248]                  ; 8-byte Folded Reload
	str	d0, [sp, #440]
Ltmp18:
	add	x0, sp, #520
	fmov	d0, #0.75000000
	bl	__ZL8quantileRKNSt3__16vectorIdNS_9allocatorIdEEEEd
	str	d0, [sp, #216]                  ; 8-byte Folded Spill
Ltmp19:
	b	LBB0_55
LBB0_55:
Ltmp20:
	add	x0, sp, #520
	fmov	d0, #0.25000000
	bl	__ZL8quantileRKNSt3__16vectorIdNS_9allocatorIdEEEEd
	str	d0, [sp, #208]                  ; 8-byte Folded Spill
Ltmp21:
	b	LBB0_56
LBB0_56:
	ldr	d0, [sp, #216]                  ; 8-byte Folded Reload
	ldr	d1, [sp, #208]                  ; 8-byte Folded Reload
	fsub	d0, d0, d1
	str	d0, [sp, #432]
Ltmp22:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp23:
	b	LBB0_57
LBB0_57:
Ltmp24:
	mov	w0, #2                          ; =0x2
	bl	__ZNSt3__112setprecisionB9nqe210106Ei
	str	w0, [sp, #196]                  ; 4-byte Folded Spill
Ltmp25:
	b	LBB0_58
LBB0_58:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #196]                  ; 4-byte Folded Reload
	add	x1, sp, #428
	str	w8, [sp, #428]
Ltmp26:
	bl	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
Ltmp27:
	b	LBB0_59
LBB0_59:
Ltmp28:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
Ltmp29:
	b	LBB0_60
LBB0_60:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #680]
Ltmp30:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp31:
	b	LBB0_61
LBB0_61:
Ltmp32:
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp33:
	b	LBB0_62
LBB0_62:
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
	ldr	w1, [sp, #684]
Ltmp34:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp35:
	b	LBB0_63
LBB0_63:
Ltmp36:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp37:
	b	LBB0_64
LBB0_64:
Ltmp38:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp39:
	b	LBB0_65
LBB0_65:
Ltmp40:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp41:
	b	LBB0_66
LBB0_66:
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #496]
Ltmp42:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp43:
	b	LBB0_67
LBB0_67:
Ltmp44:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp45:
	b	LBB0_68
LBB0_68:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #488]
Ltmp46:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp47:
	b	LBB0_69
LBB0_69:
Ltmp48:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp49:
	b	LBB0_70
LBB0_70:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #440]
Ltmp50:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp51:
	b	LBB0_71
LBB0_71:
Ltmp52:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp53:
	b	LBB0_72
LBB0_72:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #432]
Ltmp54:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp55:
	b	LBB0_73
LBB0_73:
Ltmp56:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp57:
	b	LBB0_74
LBB0_74:
Ltmp58:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp59:
	b	LBB0_75
LBB0_75:
	add	x8, sp, #608
	str	x8, [sp, #416]
	ldr	x0, [sp, #416]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	str	x0, [sp, #408]
	ldr	x0, [sp, #416]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	str	x0, [sp, #400]
	b	LBB0_76
LBB0_76:                                ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #408
	add	x1, sp, #400
	bl	__ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB0_81
	b	LBB0_77
LBB0_77:                                ;   in Loop: Header=BB0_76 Depth=1
	add	x0, sp, #408
	bl	__ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev
	ldr	d0, [x0]
	str	d0, [sp, #392]
Ltmp80:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp81:
	b	LBB0_78
LBB0_78:                                ;   in Loop: Header=BB0_76 Depth=1
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #392]
Ltmp82:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp83:
	b	LBB0_79
LBB0_79:                                ;   in Loop: Header=BB0_76 Depth=1
	b	LBB0_80
LBB0_80:                                ;   in Loop: Header=BB0_76 Depth=1
	add	x0, sp, #408
	bl	__ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev
	b	LBB0_76
LBB0_81:
Ltmp60:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp61:
	b	LBB0_82
LBB0_82:
Ltmp62:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp63:
	b	LBB0_83
LBB0_83:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #496]
Ltmp64:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp65:
	b	LBB0_84
LBB0_84:
Ltmp66:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp67:
	b	LBB0_85
LBB0_85:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #488]
Ltmp68:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp69:
	b	LBB0_86
LBB0_86:
Ltmp70:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp71:
	b	LBB0_87
LBB0_87:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #440]
Ltmp72:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp73:
	b	LBB0_88
LBB0_88:
Ltmp74:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp75:
	b	LBB0_89
LBB0_89:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #432]
Ltmp76:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp77:
	b	LBB0_90
LBB0_90:
Ltmp78:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp79:
	b	LBB0_91
LBB0_91:
	str	wzr, [sp, #708]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #556]
	add	x0, sp, #520
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	b	LBB0_92
LBB0_92:
	add	x0, sp, #608
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	add	x0, sp, #712
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #656
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev
	ldr	w8, [sp, #708]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_94
	b	LBB0_93
LBB0_93:
	bl	___stack_chk_fail
LBB0_94:
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	add	sp, sp, #1296
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_95:
	add	x0, sp, #608
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	b	LBB0_96
LBB0_96:
	add	x0, sp, #712
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB0_97
LBB0_97:
	add	x0, sp, #656
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev
	b	LBB0_98
LBB0_98:
	ldr	x0, [sp, #648]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_100
LBB0_99:
Ltmp6:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_100
LBB0_100:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp5-Ltmp0                    ;   Call between Ltmp0 and Ltmp5
	.uleb128 Ltmp6-Lfunc_begin0             ;     jumps to Ltmp6
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp123-Ltmp10                 ;   Call between Ltmp10 and Ltmp123
	.uleb128 Ltmp124-Lfunc_begin0           ;     jumps to Ltmp124
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp15-Ltmp12                  ;   Call between Ltmp12 and Ltmp15
	.uleb128 Ltmp117-Lfunc_begin0           ;     jumps to Ltmp117
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp79-Ltmp16                  ;   Call between Ltmp16 and Ltmp79
	.uleb128 Ltmp84-Lfunc_begin0            ;     jumps to Ltmp84
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp79-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Lfunc_end0-Ltmp79              ;   Call between Ltmp79 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEEC1B9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
Ltmp125:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
Ltmp126:
	b	LBB2_1
LBB2_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
	add	x0, x8, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp128:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp129:
	b	LBB2_2
LBB2_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x8
Ltmp131:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp132:
	b	LBB2_3
LBB2_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbnz	x8, LBB2_9
	b	LBB2_4
LBB2_4:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp133:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
Ltmp134:
	b	LBB2_5
LBB2_5:
	b	LBB2_9
LBB2_6:
Ltmp127:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB2_11
LBB2_7:
Ltmp130:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB2_10
LBB2_8:
Ltmp135:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	b	LBB2_10
LBB2_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB2_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	b	LBB2_11
LBB2_11:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB2_12
LBB2_12:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp125-Lfunc_begin1           ;   Call between Lfunc_begin1 and Ltmp125
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp126-Ltmp125                ;   Call between Ltmp125 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin1           ;     jumps to Ltmp127
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin1           ;     jumps to Ltmp130
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp134-Ltmp131                ;   Call between Ltmp131 and Ltmp134
	.uleb128 Ltmp135-Lfunc_begin1           ;     jumps to Ltmp135
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp134             ;   Call between Ltmp134 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL13clobberMemoryv
__ZL13clobberMemoryv:                   ; @_ZL13clobberMemoryv
	.cfi_startproc
; %bb.0:
	; InlineAsm Start
	; InlineAsm End
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL6kernelPKfm
__ZL6kernelPKfm:                        ; @_ZL6kernelPKfm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	movi.2d	v0, #0000000000000000
	str	d0, [sp, #8]
	str	xzr, [sp]
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hs	LBB5_4
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d1, s0
	ldr	d0, [sp, #8]
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB5_3
LBB5_3:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	LBB5_1
LBB5_4:
	ldr	d0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL17doNotOptimizeAwayIdEvRKT_
__ZL17doNotOptimizeAwayIdEvRKT_:        ; @_ZL17doNotOptimizeAwayIdEvRKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	str	d0, [sp]
	mov	x8, sp
	; InlineAsm Start
	; InlineAsm End
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB8_6
	b	LBB8_1
LBB8_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB8_3
	b	LBB8_2
LBB8_2:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
LBB8_3:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x3, x8, #16
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp138:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
Ltmp139:
	b	LBB8_4
LBB8_4:
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	b	LBB8_6
LBB8_5:
Ltmp140:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	b	LBB8_7
LBB8_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB8_7:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp138-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp138
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp139-Ltmp138                ;   Call between Ltmp138 and Ltmp139
	.uleb128 Ltmp140-Lfunc_begin2           ;     jumps to Ltmp140
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp139-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp139             ;   Call between Ltmp139 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__math3absB9nqe210106Ed ; -- Begin function _ZNSt3__16__math3absB9nqe210106Ed
	.globl	__ZNSt3__16__math3absB9nqe210106Ed
	.weak_definition	__ZNSt3__16__math3absB9nqe210106Ed
	.p2align	2
__ZNSt3__16__math3absB9nqe210106Ed:     ; @_ZNSt3__16__math3absB9nqe210106Ed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	fabs	d0, d0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB9nqe210106EOd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1B9nqe210106ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_ ; -- Begin function _ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_
	.globl	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_
	.weak_definition	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_
	.p2align	2
__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_: ; @_ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEEEEvT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE3endB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE5frontB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1neB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev
	.globl	__ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev: ; @_ZNKSt3__111__wrap_iterIPdEdeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev ; -- Begin function _ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev
	.globl	__ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev
	.weak_definition	__ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev
	.p2align	2
__ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev: ; @_ZNSt3__111__wrap_iterIPdEppB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #8
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL8quantileRKNSt3__16vectorIdNS_9allocatorIdEEEEd
__ZL8quantileRKNSt3__16vectorIdNS_9allocatorIdEEEEd: ; @_ZL8quantileRKNSt3__16vectorIdNS_9allocatorIdEEEEd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	d0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	subs	x8, x0, #1
	ucvtf	d0, x8
	ldur	d1, [x29, #-16]
	fmul	d0, d0, d1
	stur	d0, [x29, #-24]
	ldur	d0, [x29, #-24]
	fcvtmu	x8, d0
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	add	x9, sp, #48
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	x8, [sp, #48]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, #1
	add	x1, sp, #40
	str	x8, [sp, #40]
	bl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-40]
	ldur	d0, [x29, #-24]
	ldur	d1, [x29, #-32]
	ucvtf	d1, d1
	fsub	d0, d0, d1
	str	d0, [sp, #32]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	ldr	d0, [x0]
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	d0, [sp, #32]
	str	d0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-40]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	ldr	d0, [x0]
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	d2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	d3, [x0]
	fsub	d1, d1, d3
	fmadd	d0, d0, d1, d2
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E ; -- Begin function _ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.globl	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.weak_definition	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.p2align	2
__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E: ; @_ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base9precisionB9nqe210106El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRNS_8ios_baseES5_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
	blr	x8
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE ; -- Begin function _ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE
	.globl	__ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE
	.weak_definition	__ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE
	.p2align	2
__ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE: ; @_ZNSt3__15fixedB9nqe210106ERNS_8ios_baseE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #4                          ; =0x4
	mov	w2, #260                        ; =0x104
	bl	__ZNSt3__18ios_base4setfB9nqe210106Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112setprecisionB9nqe210106Ei ; -- Begin function _ZNSt3__112setprecisionB9nqe210106Ei
	.globl	__ZNSt3__112setprecisionB9nqe210106Ei
	.weak_definition	__ZNSt3__112setprecisionB9nqe210106Ei
	.p2align	2
__ZNSt3__112setprecisionB9nqe210106Ei:  ; @_ZNSt3__112setprecisionB9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t5C1B9nqe210106Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x1, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x1, [x1, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	add	x0, sp, #8
	str	d0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB9nqe210106ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	scvtf	d0, x0
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IdLi0EEERKT_
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B9nqe210106IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IdLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B9nqe210106IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1eqB9nqe210106IPdEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, eq
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	.globl	__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev: ; @_ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_: ; @_ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEEixB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB47_2
	b	LBB47_1
LBB47_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB47_3
LBB47_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB47_3
LBB47_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base4setfB9nqe210106Ejj ; -- Begin function _ZNSt3__18ios_base4setfB9nqe210106Ejj
	.globl	__ZNSt3__18ios_base4setfB9nqe210106Ejj
	.weak_definition	__ZNSt3__18ios_base4setfB9nqe210106Ejj
	.p2align	2
__ZNSt3__18ios_base4setfB9nqe210106Ejj: ; @_ZNSt3__18ios_base4setfB9nqe210106Ejj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [x0, #8]
	str	w8, [sp, #12]
	ldr	w1, [sp, #16]
	bl	__ZNSt3__18ios_base6unsetfB9nqe210106Ej
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w10, [sp, #16]
	and	w10, w8, w10
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base6unsetfB9nqe210106Ej ; -- Begin function _ZNSt3__18ios_base6unsetfB9nqe210106Ej
	.globl	__ZNSt3__18ios_base6unsetfB9nqe210106Ej
	.weak_definition	__ZNSt3__18ios_base6unsetfB9nqe210106Ej
	.p2align	2
__ZNSt3__18ios_base6unsetfB9nqe210106Ej: ; @_ZNSt3__18ios_base6unsetfB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
	ldr	w8, [x9, #8]
	bic	w8, w8, w10
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C1B9nqe210106Ei ; -- Begin function _ZNSt3__18__iom_t5C1B9nqe210106Ei
	.globl	__ZNSt3__18__iom_t5C1B9nqe210106Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C1B9nqe210106Ei
	.p2align	2
__ZNSt3__18__iom_t5C1B9nqe210106Ei:     ; @_ZNSt3__18__iom_t5C1B9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t5C2B9nqe210106Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C2B9nqe210106Ei ; -- Begin function _ZNSt3__18__iom_t5C2B9nqe210106Ei
	.globl	__ZNSt3__18__iom_t5C2B9nqe210106Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C2B9nqe210106Ei
	.p2align	2
__ZNSt3__18__iom_t5C2B9nqe210106Ei:     ; @_ZNSt3__18__iom_t5C2B9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #24]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	add	x0, x8, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, x8
	str	x9, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	sp, sp, #16
	b	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEEC2B9nqe210106Em
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIfEC1B9nqe210106Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, sp, #32
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_
	ldr	x0, [sp, #32]
	add	x8, sp, #40
	bl	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ls	LBB55_5
	b	LBB55_1
LBB55_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp158:
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em
Ltmp159:
	b	LBB55_2
LBB55_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp160:
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm
Ltmp161:
	b	LBB55_3
LBB55_3:
	b	LBB55_5
LBB55_4:
Ltmp162:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #40
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev
	b	LBB55_6
LBB55_5:
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB55_6:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table55:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp158-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp158
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp158-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp161-Ltmp158                ;   Call between Ltmp158 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin3           ;     jumps to Ltmp162
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp161-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp161             ;   Call between Ltmp161 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIfEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIfEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIfEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIfEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIfEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIfEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIfEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_ ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE11__vallocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB59_2
	b	LBB59_1
LBB59_1:
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev
LBB59_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #24]
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]
	b	LBB60_1
LBB60_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.eq	LBB60_6
	b	LBB60_2
LBB60_2:                                ;   in Loop: Header=BB60_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp163:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB9nqe210106IfJELi0EEEvRS2_PT_DpOT0_
Ltmp164:
	b	LBB60_3
LBB60_3:                                ;   in Loop: Header=BB60_1 Depth=1
	b	LBB60_4
LBB60_4:                                ;   in Loop: Header=BB60_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	mov	x9, x8
	str	x9, [sp, #40]
	stur	x8, [x29, #-32]
	b	LBB60_1
LBB60_5:
Ltmp165:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev
	b	LBB60_7
LBB60_6:
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB60_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table60:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp163-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp163
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp163-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp164-Ltmp163                ;   Call between Ltmp163 and Ltmp164
	.uleb128 Ltmp165-Lfunc_begin4           ;     jumps to Ltmp165
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp164             ;   Call between Ltmp164 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIfEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIfEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIfEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIfEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIfEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIfEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_ ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC2B9nqe210106ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeB9nqe210106Ev
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp170:
	bl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp171:
	b	LBB68_1
LBB68_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB68_2:
Ltmp172:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table68:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp170-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp171-Ltmp170                ;   Call between Ltmp170 and Ltmp171
	.uleb128 Ltmp172-Lfunc_begin5           ;     jumps to Ltmp172
	.byte	1                               ;   On action: 1
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIfE8allocateB9nqe210106Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB9nqe210106Em
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp173:
	add	x1, x10, x11, lsl #2
	add	x2, x8, x9, lsl #2
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp174:
	b	LBB71_1
LBB71_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB71_2:
Ltmp175:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table71:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp173-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp174-Ltmp173                ;   Call between Ltmp173 and Ltmp174
	.uleb128 Ltmp175-Lfunc_begin6           ;     jumps to Ltmp175
	.byte	1                               ;   On action: 1
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__19allocatorIfE8max_sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #4611686018427387903        ; =0x3fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe210106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe210106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe210106EPKc
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp177:
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp178:
	b	LBB77_1
LBB77_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB77_2:
Ltmp179:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB77_3
LBB77_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table77:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp177-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp177
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin7           ;     jumps to Ltmp179
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp178-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp178             ;   Call between Ltmp178 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B9nqe210106EPKc ; -- Begin function _ZNSt12length_errorC1B9nqe210106EPKc
	.globl	__ZNSt12length_errorC1B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B9nqe210106EPKc
	.p2align	2
__ZNSt12length_errorC1B9nqe210106EPKc:  ; @_ZNSt12length_errorC1B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B9nqe210106EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B9nqe210106EPKc ; -- Begin function _ZNSt12length_errorC2B9nqe210106EPKc
	.globl	__ZNSt12length_errorC2B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B9nqe210106EPKc
	.p2align	2
__ZNSt12length_errorC2B9nqe210106EPKc:  ; @_ZNSt12length_errorC2B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIfE8allocateB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIfE8allocateB9nqe210106Em
	.globl	__ZNSt3__19allocatorIfE8allocateB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIfE8allocateB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIfE8allocateB9nqe210106Em: ; @_ZNSt3__19allocatorIfE8allocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB80_2
	b	LBB80_1
LBB80_1:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
LBB80_2:
	ldr	x0, [sp, #16]
	mov	x1, #4                          ; =0x4
	bl	__ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB9nqe210106v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.globl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB9nqe210106v: ; @_ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB9nqe210106IfEEPT_NS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	lsl	x8, x8, #2
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_ ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	add	x1, x8, x9, lsl #2
	bl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_ ; -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_
	.globl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_
	.weak_definition	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_
	.p2align	2
__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_: ; @_ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIfEEEEvPKvS4_S4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	.globl	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_: ; @_ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB9nqe210106IfJELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB9nqe210106IfJELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB9nqe210106IfJELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB9nqe210106IfJELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB9nqe210106IfJELi0EEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	str	x9, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE19__annotate_increaseB9nqe210106Em
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	ldr	x12, [sp]                       ; 8-byte Folded Reload
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp183:
	add	x1, x11, x12, lsl #2
	add	x8, x8, x10, lsl #2
	add	x2, x8, x9, lsl #2
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp184:
	b	LBB92_1
LBB92_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB92_2:
Ltmp185:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table92:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp183-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp184-Ltmp183                ;   Call between Ltmp183 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin8           ;     jumps to Ltmp185
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_
	.globl	__ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIfE9constructB9nqe210106IfJEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	movi.2d	v0, #0000000000000000
	str	s0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
	ldr	x8, [x9, #8]
	ldr	x10, [x9]
	str	x8, [x10, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB95_2
	b	LBB95_1
LBB95_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x1, x8, x9
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em
	b	LBB95_2
LBB95_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp188:
	add	x1, x10, x11, lsl #2
	add	x2, x8, x9, lsl #2
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp189:
	b	LBB96_1
LBB96_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB96_2:
Ltmp190:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table96:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp188-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp189-Ltmp188                ;   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin9           ;     jumps to Ltmp190
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIfNS_9allocatorIfEEE16__destroy_vectorEED2B9nqe210106Ev
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB97_3
	b	LBB97_1
LBB97_1:
Ltmp191:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev
Ltmp192:
	b	LBB97_2
LBB97_2:
	b	LBB97_3
LBB97_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB97_4:
Ltmp193:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table97:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp191-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp192-Ltmp191                ;   Call between Ltmp191 and Ltmp192
	.uleb128 Ltmp193-Lfunc_begin10          ;     jumps to Ltmp193
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB98_2
	b	LBB98_1
LBB98_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm
	b	LBB98_2
LBB98_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB9nqe210106Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB9nqe210106Ev
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
Ltmp194:
	add	x1, x10, x11, lsl #2
	add	x2, x8, x9, lsl #2
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp195:
	b	LBB100_1
LBB100_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB100_2:
Ltmp196:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table100:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp194-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp195-Ltmp194                ;   Call between Ltmp194 and Ltmp195
	.uleb128 Ltmp196-Lfunc_begin11          ;     jumps to Ltmp196
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB9nqe210106ERS2_Pfm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf
	.weak_definition	__ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB9nqe210106EPf
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB102_1
LBB102_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB102_4
	b	LBB102_2
LBB102_2:                               ;   in Loop: Header=BB102_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IfEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp197:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB9nqe210106IfLi0EEEvRS2_PT_
Ltmp198:
	b	LBB102_3
LBB102_3:                               ;   in Loop: Header=BB102_1 Depth=1
	b	LBB102_1
LBB102_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB102_5:
Ltmp199:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table102:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp197-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp198-Ltmp197                ;   Call between Ltmp197 and Ltmp198
	.uleb128 Ltmp199-Lfunc_begin12          ;     jumps to Ltmp199
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB9nqe210106IfLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB9nqe210106IfLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB9nqe210106IfLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB9nqe210106IfLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB9nqe210106IfLi0EEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIfE7destroyB9nqe210106EPf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIfE7destroyB9nqe210106EPf ; -- Begin function _ZNSt3__19allocatorIfE7destroyB9nqe210106EPf
	.globl	__ZNSt3__19allocatorIfE7destroyB9nqe210106EPf
	.weak_definition	__ZNSt3__19allocatorIfE7destroyB9nqe210106EPf
	.p2align	2
__ZNSt3__19allocatorIfE7destroyB9nqe210106EPf: ; @_ZNSt3__19allocatorIfE7destroyB9nqe210106EPf
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm ; -- Begin function _ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm
	.globl	__ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm
	.weak_definition	__ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm
	.p2align	2
__ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm: ; @_ZNSt3__19allocatorIfE10deallocateB9nqe210106EPfm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #4                          ; =0x4
	bl	__ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB9nqe210106IfEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #2
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev: ; @_ZNSt3__16vectorIfNS_9allocatorIfEEED2B9nqe210106Ev
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp201:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorC1B9nqe210106ERS3_
Ltmp202:
	b	LBB107_1
LBB107_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIfNS_9allocatorIfEEE16__destroy_vectorclB9nqe210106Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB107_2:
Ltmp203:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table107:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp201-Lfunc_begin13          ; >> Call Site 1 <<
	.uleb128 Ltmp202-Ltmp201                ;   Call between Ltmp201 and Ltmp202
	.uleb128 Ltmp203-Lfunc_begin13          ;     jumps to Ltmp203
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__18ios_baseC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #8]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	str	xzr, [x8, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x1, [sp, #8]
	add	x0, x8, x9
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_baseC2B9nqe210106Ev ; -- Begin function _ZNSt3__18ios_baseC2B9nqe210106Ev
	.globl	__ZNSt3__18ios_baseC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__18ios_baseC2B9nqe210106Ev
	.p2align	2
__ZNSt3__18ios_baseC2B9nqe210106Ev:     ; @_ZNSt3__18ios_baseC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTVNSt3__18ios_baseE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__18ios_baseE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__18ios_base4initEPv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #136]
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	w0, [x8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev: ; @_ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB9nqe210106Ej ; -- Begin function _ZNSt3__18ios_base8setstateB9nqe210106Ej
	.globl	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB9nqe210106Ej: ; @_ZNSt3__18ios_base8setstateB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIdEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIdEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIdEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIdEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIdEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIdEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIdEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIdEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIdEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIdEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIdEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIdEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEED2B9nqe210106Ev
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp206:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_
Ltmp207:
	b	LBB120_1
LBB120_1:
Ltmp208:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev
Ltmp209:
	b	LBB120_2
LBB120_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB120_3:
Ltmp210:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table120:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp206-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp209-Ltmp206                ;   Call between Ltmp206 and Ltmp209
	.uleb128 Ltmp210-Lfunc_begin14          ;     jumps to Ltmp210
	.byte	1                               ;   On action: 1
Lcst_end14:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB122_2
	b	LBB122_1
LBB122_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm
	b	LBB122_2
LBB122_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B9nqe210106ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
Ltmp212:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp213:
	b	LBB125_1
LBB125_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB125_2:
Ltmp214:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table125:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp212-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp213-Ltmp212                ;   Call between Ltmp212 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin15          ;     jumps to Ltmp214
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB9nqe210106EPd
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB128_1
LBB128_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB128_4
	b	LBB128_2
LBB128_2:                               ;   in Loop: Header=BB128_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp216:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_
Ltmp217:
	b	LBB128_3
LBB128_3:                               ;   in Loop: Header=BB128_1 Depth=1
	b	LBB128_1
LBB128_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB128_5:
Ltmp218:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table128:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp216-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp217-Ltmp216                ;   Call between Ltmp216 and Ltmp217
	.uleb128 Ltmp218-Lfunc_begin16          ;     jumps to Ltmp218
	.byte	1                               ;   On action: 1
Lcst_end16:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp219:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp220:
	b	LBB129_1
LBB129_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB129_2:
Ltmp221:
	bl	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table129:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp219-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp220-Ltmp219                ;   Call between Ltmp219 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin17          ;     jumps to Ltmp221
	.byte	1                               ;   On action: 1
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIdE7destroyB9nqe210106EPd
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	.globl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_: ; @_ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdE7destroyB9nqe210106EPd ; -- Begin function _ZNSt3__19allocatorIdE7destroyB9nqe210106EPd
	.globl	__ZNSt3__19allocatorIdE7destroyB9nqe210106EPd
	.weak_definition	__ZNSt3__19allocatorIdE7destroyB9nqe210106EPd
	.p2align	2
__ZNSt3__19allocatorIdE7destroyB9nqe210106EPd: ; @_ZNSt3__19allocatorIdE7destroyB9nqe210106EPd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_ ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	add	x1, x8, x9, lsl #3
	bl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_ ; -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_
	.globl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_
	.weak_definition	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_
	.p2align	2
__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_: ; @_ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIdEEEEvPKvS4_S4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm ; -- Begin function _ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm
	.globl	__ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm
	.weak_definition	__ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm
	.p2align	2
__ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm: ; @_ZNSt3__19allocatorIdE10deallocateB9nqe210106EPdm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB9nqe210106IdEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #3
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp225:
	bl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp226:
	b	LBB138_1
LBB138_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB138_2:
Ltmp227:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table138:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp225-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp226-Ltmp225                ;   Call between Ltmp225 and Ltmp226
	.uleb128 Ltmp227-Lfunc_begin18          ;     jumps to Ltmp227
	.byte	1                               ;   On action: 1
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #8                         ; =0x8
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #3
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__19allocatorIdE8max_sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #2305843009213693951        ; =0x1fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-24]
	cbnz	x8, LBB145_2
	b	LBB145_1
LBB145_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB145_3
LBB145_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB145_3
LBB145_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIdE8allocateB9nqe210106Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdE8allocateB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIdE8allocateB9nqe210106Em
	.globl	__ZNSt3__19allocatorIdE8allocateB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIdE8allocateB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIdE8allocateB9nqe210106Em: ; @_ZNSt3__19allocatorIdE8allocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB147_2
	b	LBB147_1
LBB147_1:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
LBB147_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB9nqe210106IdEEPT_NS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	lsl	x8, x8, #3
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_: ; @_ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIdEEPdEEvRT_T0_S6_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #8                          ; =0x8
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB9nqe210106IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp230:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp231:
	b	LBB151_1
LBB151_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB151_2:
Ltmp232:
	bl	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table151:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp230-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp231-Ltmp230                ;   Call between Ltmp230 and Ltmp231
	.uleb128 Ltmp232-Lfunc_begin19          ;     jumps to Ltmp232
	.byte	1                               ;   On action: 1
Lcst_end19:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB152_3
	b	LBB152_1
LBB152_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp233:
	bl	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp234:
	b	LBB152_2
LBB152_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB9nqe210106ERS2_Pdm
	b	LBB152_3
LBB152_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB152_4:
Ltmp235:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table152:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp233-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp234-Ltmp233                ;   Call between Ltmp233 and Ltmp234
	.uleb128 Ltmp235-Lfunc_begin20          ;     jumps to Ltmp235
	.byte	1                               ;   On action: 1
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev: ; @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB9nqe210106EPdNS_17integral_constantIbLb0EEE
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB156_1
LBB156_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB156_4
	b	LBB156_2
LBB156_2:                               ;   in Loop: Header=BB156_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp237:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB9nqe210106IdLi0EEEvRS2_PT_
Ltmp238:
	b	LBB156_3
LBB156_3:                               ;   in Loop: Header=BB156_1 Depth=1
	b	LBB156_1
LBB156_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB156_5:
Ltmp239:
	bl	___clang_call_terminate
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table156:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Ltmp237-Lfunc_begin21          ; >> Call Site 1 <<
	.uleb128 Ltmp238-Ltmp237                ;   Call between Ltmp237 and Ltmp238
	.uleb128 Ltmp239-Lfunc_begin21          ;     jumps to Ltmp239
	.byte	1                               ;   On action: 1
Lcst_end21:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase15:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp240:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp241:
	b	LBB157_1
LBB157_1:
Ltmp243:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp244:
	b	LBB157_2
LBB157_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB157_18
	b	LBB157_3
LBB157_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp245:
	bl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp246:
	b	LBB157_4
LBB157_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB157_6
	b	LBB157_5
LBB157_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB157_7
LBB157_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB157_7
LBB157_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp247:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp248:
	b	LBB157_8
LBB157_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp249:
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp250:
	b	LBB157_9
LBB157_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	tbz	w0, #0, LBB157_17
	b	LBB157_10
LBB157_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp251:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
Ltmp252:
	b	LBB157_11
LBB157_11:
	b	LBB157_17
LBB157_12:
Ltmp242:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB157_14
LBB157_13:
Ltmp253:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB157_14
LBB157_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp254:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp255:
	b	LBB157_15
LBB157_15:
	bl	___cxa_end_catch
	b	LBB157_16
LBB157_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB157_17:
	b	LBB157_18
LBB157_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB157_16
LBB157_19:
Ltmp256:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp257:
	bl	___cxa_end_catch
Ltmp258:
	b	LBB157_20
LBB157_20:
	b	LBB157_21
LBB157_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB157_22:
Ltmp259:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table157:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp240-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp241-Ltmp240                ;   Call between Ltmp240 and Ltmp241
	.uleb128 Ltmp242-Lfunc_begin22          ;     jumps to Ltmp242
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp243-Lfunc_begin22          ; >> Call Site 2 <<
	.uleb128 Ltmp252-Ltmp243                ;   Call between Ltmp243 and Ltmp252
	.uleb128 Ltmp253-Lfunc_begin22          ;     jumps to Ltmp253
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp252-Lfunc_begin22          ; >> Call Site 3 <<
	.uleb128 Ltmp254-Ltmp252                ;   Call between Ltmp252 and Ltmp254
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp254-Lfunc_begin22          ; >> Call Site 4 <<
	.uleb128 Ltmp255-Ltmp254                ;   Call between Ltmp254 and Ltmp255
	.uleb128 Ltmp256-Lfunc_begin22          ;     jumps to Ltmp256
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp255-Lfunc_begin22          ; >> Call Site 5 <<
	.uleb128 Ltmp257-Ltmp255                ;   Call between Ltmp255 and Ltmp257
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp257-Lfunc_begin22          ; >> Call Site 6 <<
	.uleb128 Ltmp258-Ltmp257                ;   Call between Ltmp257 and Ltmp258
	.uleb128 Ltmp259-Lfunc_begin22          ;     jumps to Ltmp259
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp258-Lfunc_begin22          ; >> Call Site 7 <<
	.uleb128 Lfunc_end22-Ltmp258            ;   Call between Ltmp258 and Lfunc_end22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase16:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB160_2
	b	LBB160_1
LBB160_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB160_23
LBB160_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB160_4
	b	LBB160_3
LBB160_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB160_5
LBB160_4:
	str	xzr, [sp, #72]
	b	LBB160_5
LBB160_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB160_9
	b	LBB160_6
LBB160_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB160_8
	b	LBB160_7
LBB160_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB160_23
LBB160_8:
	b	LBB160_9
LBB160_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB160_18
	b	LBB160_10
LBB160_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp261:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp262:
	b	LBB160_11
LBB160_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB160_14
	b	LBB160_12
LBB160_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB160_15
LBB160_13:
Ltmp263:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB160_24
LBB160_14:
	str	wzr, [sp, #24]
	b	LBB160_15
LBB160_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB160_17
	b	LBB160_16
LBB160_16:
	b	LBB160_23
LBB160_17:
	b	LBB160_18
LBB160_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB160_22
	b	LBB160_19
LBB160_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB160_21
	b	LBB160_20
LBB160_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB160_23
LBB160_21:
	b	LBB160_22
LBB160_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB9nqe210106El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB160_23
LBB160_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB160_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table160:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Lfunc_begin23-Lfunc_begin23    ; >> Call Site 1 <<
	.uleb128 Ltmp261-Lfunc_begin23          ;   Call between Lfunc_begin23 and Ltmp261
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp261-Lfunc_begin23          ; >> Call Site 2 <<
	.uleb128 Ltmp262-Ltmp261                ;   Call between Ltmp261 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin23          ;     jumps to Ltmp263
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp262-Lfunc_begin23          ; >> Call Site 3 <<
	.uleb128 Lfunc_end23-Ltmp262            ;   Call between Ltmp262 and Lfunc_end23
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end23:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB9nqe210106Ev: ; @_ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	tbnz	w0, #0, LBB163_2
	b	LBB163_1
LBB163_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	b	LBB163_2
LBB163_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5widthB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB9nqe210106Ev: ; @_ZNKSt3__18ios_base5widthB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	bl	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB9nqe210106El ; -- Begin function _ZNSt3__18ios_base5widthB9nqe210106El
	.globl	__ZNSt3__18ios_base5widthB9nqe210106El
	.weak_definition	__ZNSt3__18ios_base5widthB9nqe210106El
	.p2align	2
__ZNSt3__18ios_base5widthB9nqe210106El: ; @_ZNSt3__18ios_base5widthB9nqe210106El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	tbz	w0, #0, LBB175_2
	b	LBB175_1
LBB175_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB175_3
LBB175_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB175_3
LBB175_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp273:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp274:
	b	LBB180_1
LBB180_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB180_2:
Ltmp275:
	bl	___clang_call_terminate
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table180:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase17-Lttbaseref17
Lttbaseref17:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Ltmp273-Lfunc_begin24          ; >> Call Site 1 <<
	.uleb128 Ltmp274-Ltmp273                ;   Call between Ltmp273 and Ltmp274
	.uleb128 Ltmp275-Lfunc_begin24          ;     jumps to Ltmp275
	.byte	1                               ;   On action: 1
Lcst_end24:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase17:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB9nqe210106Ev: ; @_ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp277:
	bl	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp278:
	b	LBB184_1
LBB184_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp279:
	bl	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp280:
	b	LBB184_2
LBB184_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB184_3:
Ltmp281:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB184_4
LBB184_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table184:
Lexception25:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Lfunc_begin25-Lfunc_begin25    ; >> Call Site 1 <<
	.uleb128 Ltmp277-Lfunc_begin25          ;   Call between Lfunc_begin25 and Ltmp277
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp277-Lfunc_begin25          ; >> Call Site 2 <<
	.uleb128 Ltmp280-Ltmp277                ;   Call between Ltmp277 and Ltmp280
	.uleb128 Ltmp281-Lfunc_begin25          ;     jumps to Ltmp281
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp280-Lfunc_begin25          ; >> Call Site 3 <<
	.uleb128 Lfunc_end25-Ltmp280            ;   Call between Ltmp280 and Lfunc_end25
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end25:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec: ; @_ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEEvDpOT_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEEvDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB190_2
	b	LBB190_1
LBB190_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE30__emplace_back_assume_capacityB9nqe210106IJdEEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB190_3
LBB190_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE24__emplace_back_slow_pathIJdEEEPdDpOT_
	str	x0, [sp, #8]
	b	LBB190_3
LBB190_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE30__emplace_back_assume_capacityB9nqe210106IJdEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE30__emplace_back_assume_capacityB9nqe210106IJdEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE30__emplace_back_assume_capacityB9nqe210106IJdEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE30__emplace_back_assume_capacityB9nqe210106IJdEEEvDpOT_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE30__emplace_back_assume_capacityB9nqe210106IJdEEEvDpOT_
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp284:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_
Ltmp285:
	b	LBB191_1
LBB191_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB191_2:
Ltmp286:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	b	LBB191_3
LBB191_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table191:
Lexception26:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Lfunc_begin26-Lfunc_begin26    ; >> Call Site 1 <<
	.uleb128 Ltmp284-Lfunc_begin26          ;   Call between Lfunc_begin26 and Ltmp284
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp284-Lfunc_begin26          ; >> Call Site 2 <<
	.uleb128 Ltmp285-Ltmp284                ;   Call between Ltmp284 and Ltmp285
	.uleb128 Ltmp286-Lfunc_begin26          ;     jumps to Ltmp286
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp285-Lfunc_begin26          ; >> Call Site 3 <<
	.uleb128 Lfunc_end26-Ltmp285            ;   Call between Ltmp285 and Lfunc_end26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end26:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE24__emplace_back_slow_pathIJdEEEPdDpOT_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE24__emplace_back_slow_pathIJdEEEPdDpOT_
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE24__emplace_back_slow_pathIJdEEEPdDpOT_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE24__emplace_back_slow_pathIJdEEEPdDpOT_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE24__emplace_back_slow_pathIJdEEEPdDpOT_
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp287:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_
Ltmp288:
	b	LBB192_1
LBB192_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #8
	str	x8, [sp, #56]
Ltmp289:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
Ltmp290:
	b	LBB192_2
LBB192_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB192_3:
Ltmp291:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	b	LBB192_4
LBB192_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table192:
Lexception27:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end27-Lcst_begin27
Lcst_begin27:
	.uleb128 Lfunc_begin27-Lfunc_begin27    ; >> Call Site 1 <<
	.uleb128 Ltmp287-Lfunc_begin27          ;   Call between Lfunc_begin27 and Ltmp287
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp287-Lfunc_begin27          ; >> Call Site 2 <<
	.uleb128 Ltmp290-Ltmp287                ;   Call between Ltmp287 and Ltmp290
	.uleb128 Ltmp291-Lfunc_begin27          ;     jumps to Ltmp291
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp290-Lfunc_begin27          ; >> Call Site 3 <<
	.uleb128 Lfunc_end27-Ltmp290            ;   Call between Ltmp290 and Lfunc_end27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end27:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB9nqe210106IdJdELi0EEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	str	x9, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	add	x9, x9, x10, lsl #3
	str	x9, [x8, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE19__annotate_increaseB9nqe210106Em
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	ldr	x12, [sp]                       ; 8-byte Folded Reload
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp292:
	add	x1, x11, x12, lsl #3
	add	x8, x8, x10, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp293:
	b	LBB197_1
LBB197_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB197_2:
Ltmp294:
	bl	___clang_call_terminate
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table197:
Lexception28:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase18-Lttbaseref18
Lttbaseref18:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end28-Lcst_begin28
Lcst_begin28:
	.uleb128 Ltmp292-Lfunc_begin28          ; >> Call Site 1 <<
	.uleb128 Ltmp293-Ltmp292                ;   Call between Ltmp292 and Ltmp293
	.uleb128 Ltmp294-Lfunc_begin28          ;     jumps to Ltmp294
	.byte	1                               ;   On action: 1
Lcst_end28:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase18:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_
	.globl	__ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIdE9constructB9nqe210106IdJdEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	d0, [x9]
	str	d0, [x8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
	ldr	x8, [x9, #8]
	ldr	x10, [x9]
	str	x8, [x10, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB199_2
	b	LBB199_1
LBB199_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x1, x8, x9
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_shrinkB9nqe210106Em
	b	LBB199_2
LBB199_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB200_2
	b	LBB200_1
LBB200_1:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
LBB200_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB9nqe210106Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB200_4
	b	LBB200_3
LBB200_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB200_5
LBB200_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB200_5
LBB200_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_: ; @_ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB202_2
	b	LBB202_1
LBB202_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB202_3
LBB202_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB202_3
LBB202_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2B9nqe210106ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB9nqe210106IS2_Li0EEES2_RKS2_
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB9nqe210106IPdS5_EEvT_T0_m
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB9nqe210106IS2_Li0EEES2_RKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB9nqe210106IS2_Li0EEES2_RKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB9nqe210106IS2_Li0EEES2_RKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB9nqe210106IS2_Li0EEES2_RKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB9nqe210106IS2_Li0EEES2_RKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB9nqe210106IPdS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB9nqe210106IPdS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB9nqe210106IPdS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB9nqe210106IPdS5_EEvT_T0_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB9nqe210106IPdS5_EEvT_T0_m
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B9nqe210106ERS3_
	ldr	x0, [sp, #40]
	add	x8, sp, #48
	bl	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.ls	LBB205_5
	b	LBB205_1
LBB205_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp297:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em
Ltmp298:
	b	LBB205_2
LBB205_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
Ltmp299:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
Ltmp300:
	b	LBB205_3
LBB205_3:
	b	LBB205_5
LBB205_4:
Ltmp301:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #48
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev
	b	LBB205_6
LBB205_5:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB205_6:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table205:
Lexception29:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end29-Lcst_begin29
Lcst_begin29:
	.uleb128 Lfunc_begin29-Lfunc_begin29    ; >> Call Site 1 <<
	.uleb128 Ltmp297-Lfunc_begin29          ;   Call between Lfunc_begin29 and Ltmp297
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp297-Lfunc_begin29          ; >> Call Site 2 <<
	.uleb128 Ltmp300-Ltmp297                ;   Call between Ltmp297 and Ltmp300
	.uleb128 Ltmp301-Lfunc_begin29          ;     jumps to Ltmp301
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp300-Lfunc_begin29          ; >> Call Site 3 <<
	.uleb128 Lfunc_end29-Ltmp300            ;   Call between Ltmp300 and Lfunc_end29
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end29:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB9nqe210106INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB207_2
	b	LBB207_1
LBB207_1:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
LBB207_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB9nqe210106Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp302:
	add	x0, x8, #16
	bl	__ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp303:
	b	LBB208_1
LBB208_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB208_2:
Ltmp304:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B9nqe210106Ev
	b	LBB208_3
LBB208_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table208:
Lexception30:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end30-Lcst_begin30
Lcst_begin30:
	.uleb128 Lfunc_begin30-Lfunc_begin30    ; >> Call Site 1 <<
	.uleb128 Ltmp302-Lfunc_begin30          ;   Call between Lfunc_begin30 and Ltmp302
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp302-Lfunc_begin30          ; >> Call Site 2 <<
	.uleb128 Ltmp303-Ltmp302                ;   Call between Ltmp302 and Ltmp303
	.uleb128 Ltmp304-Lfunc_begin30          ;     jumps to Ltmp304
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp303-Lfunc_begin30          ; >> Call Site 3 <<
	.uleb128 Lfunc_end30-Ltmp303            ;   Call between Ltmp303 and Lfunc_end30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end30:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B9nqe210106ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B9nqe210106ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_: ; @_ZNSt3__130__uninitialized_allocator_copyB9nqe210106INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_ ; -- Begin function _ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_
	.globl	__ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_
	.weak_definition	__ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_
	.p2align	2
__ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_: ; @_ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB9nqe210106INS_9allocatorIdEEddLi0EEEPT1_RT_PT0_S8_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception31
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp307:
	bl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp308:
	b	LBB217_1
LBB217_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB217_2:
Ltmp309:
	bl	___clang_call_terminate
Lfunc_end31:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table217:
Lexception31:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase19-Lttbaseref19
Lttbaseref19:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end31-Lcst_begin31
Lcst_begin31:
	.uleb128 Ltmp307-Lfunc_begin31          ; >> Call Site 1 <<
	.uleb128 Ltmp308-Ltmp307                ;   Call between Ltmp307 and Ltmp308
	.uleb128 Ltmp309-Lfunc_begin31          ;     jumps to Ltmp309
	.byte	1                               ;   On action: 1
Lcst_end31:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase19:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_ ; -- Begin function _ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.globl	__ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.weak_definition	__ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.p2align	2
__ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_: ; @_ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.globl	__ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC1B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.globl	__ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC2B9nqe210106IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB9nqe210106IPdS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_ ; -- Begin function _ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.globl	__ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.weak_definition	__ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.p2align	2
__ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: ; @_ZNSt3__16__copyB9nqe210106IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__124__copy_move_unwrap_itersB9nqe210106INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB9nqe210106IPdS1_EENS_4pairIT0_S3_EET_S5_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB9nqe210106IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNKSt3__111__copy_implclB9nqe210106IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_
	.globl	__ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_: ; @_ZNSt3__114__rewrap_rangeB9nqe210106IPdS1_EET_S2_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB9nqe210106IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB9nqe210106IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB9nqe210106IddEEPT_S2_PT0_NS_15__element_countE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.ls	LBB227_2
	b	LBB227_1
LBB227_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #3
	add	x2, x8, #8
	bl	_memmove
	b	LBB227_2
LBB227_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB9nqe210106IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.globl	__ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC1B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.globl	__ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC2B9nqe210106IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_: ; @_ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB9nqe210106ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB9nqe210106ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8                         ; =0x8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB233_2
	b	LBB233_1
LBB233_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB9nqe210106Ev
	b	LBB233_2
LBB233_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB9nqe210106EPd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__add_alignment_assumptionB9nqe210106IPdLi0EEES5_T_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_
	.globl	__ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_: ; @_ZNSt3__111__wrap_iterIPdEC1B9nqe210106ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_
	.globl	__ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_: ; @_ZNSt3__111__wrap_iterIPdEC2B9nqe210106ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_ ; -- Begin function _ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.globl	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.weak_definition	__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.p2align	2
__ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_: ; @_ZNSt3__14sortB9nqe210106INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	sub	x2, x29, #17
	bl	__ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_ ; -- Begin function _ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.globl	__ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.weak_definition	__ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.p2align	2
__ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_: ; @_ZNSt3__111__sort_implB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldr	x0, [sp, #40]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	bl	__ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	bl	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	bl	__ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_ ; -- Begin function _ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.globl	__ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.weak_definition	__ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.p2align	2
__ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_: ; @_ZNSt3__123__debug_randomize_rangeB9nqe210106INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE ; -- Begin function _ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.globl	__ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.weak_definition	__ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.p2align	2
__ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE: ; @_ZNSt3__115__sort_dispatchB9nqe210106INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	add	x2, sp, #7
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_ ; -- Begin function _ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.globl	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.weak_definition	__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.p2align	2
__ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_: ; @_ZNSt3__113__unwrap_iterB9nqe210106INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_ ; -- Begin function _ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.globl	__ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.weak_definition	__ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.p2align	2
__ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_: ; @_ZNSt3__135__check_strict_weak_ordering_sortedB9nqe210106IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_
	.globl	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_: ; @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB9nqe210106ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.globl	__ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_: ; @_ZNSt3__112__to_addressB9nqe210106INS_11__wrap_iterIPdEELi0EEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_ ; -- Begin function _ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_
	.globl	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_
	.weak_definition	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_
	.p2align	2
__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_: ; @_ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB9nqe210106ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_ ; -- Begin function _ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_
	.globl	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_
	.weak_definition	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_
	.p2align	2
__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_: ; @_ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB9nqe210106ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	bl	__ZNKSt3__111__wrap_iterIPdE4baseB9nqe210106Ev
	bl	__ZNSt3__112__to_addressB9nqe210106IdEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base9precisionB9nqe210106El ; -- Begin function _ZNSt3__18ios_base9precisionB9nqe210106El
	.globl	__ZNSt3__18ios_base9precisionB9nqe210106El
	.weak_definition	__ZNSt3__18ios_base9precisionB9nqe210106El
	.p2align	2
__ZNSt3__18ios_base9precisionB9nqe210106El: ; @_ZNSt3__18ios_base9precisionB9nqe210106El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"data.bin"

l_.str.1:                               ; @.str.1
	.asciz	"Error: Incorrect sum on trial "

l_.str.2:                               ; @.str.2
	.asciz	"\n"

l_.str.3:                               ; @.str.3
	.asciz	"trial "

l_.str.4:                               ; @.str.4
	.asciz	": "

l_.str.5:                               ; @.str.5
	.asciz	" ms\n"

l_.str.6:                               ; @.str.6
	.asciz	"\nconfig: warmup="

l_.str.7:                               ; @.str.7
	.asciz	"  trials="

l_.str.8:                               ; @.str.8
	.asciz	"  min      mean    median     IQR\n"

l_.str.9:                               ; @.str.9
	.asciz	" "

l_.str.10:                              ; @.str.10
	.asciz	"    "

l_.str.11:                              ; @.str.11
	.asciz	"   ms\n\n"

l_.str.12:                              ; @.str.12
	.asciz	"SAMPLES:"

l_.str.13:                              ; @.str.13
	.asciz	"STATS: min="

l_.str.14:                              ; @.str.14
	.asciz	" mean="

l_.str.15:                              ; @.str.15
	.asciz	" median="

l_.str.16:                              ; @.str.16
	.asciz	" iqr="

l_.str.17:                              ; @.str.17
	.asciz	"vector"

.subsections_via_symbols
