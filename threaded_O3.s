	.build_version macos, 26, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	d15, d14, [sp, #-160]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	sub	sp, sp, #768
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	.cfi_offset b14, -152
	.cfi_offset b15, -160
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-160]
	cmp	w0, #2
	b.lt	LBB0_3
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	ldr	x0, [x1, #8]
	bl	_atoi
	mov	x28, x0
	cmp	w20, #2
	b.ne	LBB0_58
; %bb.2:
	mov	w26, #3                         ; =0x3
	b	LBB0_4
LBB0_3:
	mov	w26, #3                         ; =0x3
	mov	w28, #30                        ; =0x1e
LBB0_4:
	mov	w22, #4                         ; =0x4
LBB0_5:
	mov	w0, #33792                      ; =0x8400
	movk	w0, #6103, lsl #16
	bl	__Znwm
	mov	x19, x0
	mov	w1, #33792                      ; =0x8400
	movk	w1, #6103, lsl #16
	bl	_bzero
Ltmp0:
Lloh3:
	adrp	x1, l_.str.1@PAGE
Lloh4:
	add	x1, x1, l_.str.1@PAGEOFF
	add	x0, sp, #176
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp1:
; %bb.6:
Ltmp3:
	add	x0, sp, #176
	mov	x1, x19
	mov	w2, #33792                      ; =0x8400
	movk	w2, #6103, lsl #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl
Ltmp4:
; %bb.7:
	ubfiz	x20, x22, #7, #32
Ltmp6:
	mov	x0, x20
	mov	w1, #128                        ; =0x80
	bl	__ZnwmSt11align_val_t
Ltmp7:
; %bb.8:
	mov	w21, w22
	add	x8, x0, x21, lsl #7
	str	x0, [sp, #120]
	str	x8, [sp, #136]
	add	x23, x0, x20
	mov	x1, x20
	bl	_bzero
	str	x23, [sp, #128]
	cmp	w26, #1
	b.lt	LBB0_12
; %bb.9:
	add	x20, sp, #32
	mov	x23, x26
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	; InlineAsm End
Ltmp9:
	add	x2, sp, #120
	mov	x0, x19
	mov	x1, x22
	bl	__ZL11parallelSumPKfmiRNSt3__16vectorI7PartialNS1_9allocatorIS3_EEEE
Ltmp10:
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	str	d0, [sp, #32]
	; InlineAsm Start
	; InlineAsm End
	subs	w23, w23, #1
	b.ne	LBB0_10
LBB0_12:
	stp	xzr, xzr, [sp, #96]
	str	xzr, [sp, #112]
	cbz	w28, LBB0_40
; %bb.13:
	tbnz	w28, #31, LBB0_132
; %bb.14:
	str	w26, [sp, #12]                  ; 4-byte Folded Spill
	sxtw	x23, w28
	lsl	x0, x23, #3
Ltmp12:
	bl	__Znwm
Ltmp13:
; %bb.15:
	mov	w20, #0                         ; =0x0
	add	x8, x0, x23, lsl #3
	stp	x0, x0, [sp, #96]
	str	x8, [sp, #112]
	stp	xzr, xzr, [sp, #72]
	str	xzr, [sp, #88]
	sub	x8, x21, #1
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d9, x8
	mov	x8, #236961935654912            ; =0xd78400000000
	movk	x8, #49559, lsl #48
	fmov	d10, x8
	mov	x8, #43516                      ; =0xa9fc
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d11, x8
	add	x21, sp, #168
	add	x24, sp, #40
	stp	xzr, xzr, [sp, #48]
	str	xzr, [sp, #64]
Lloh5:
	adrp	x26, l_.str.5@PAGE
Lloh6:
	add	x26, x26, l_.str.5@PAGEOFF
Lloh7:
	adrp	x27, l_.str.6@PAGE
Lloh8:
	add	x27, x27, l_.str.6@PAGEOFF
LBB0_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_20 Depth 2
	mov	x25, x28
	; InlineAsm Start
	; InlineAsm End
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
Ltmp14:
	add	x2, sp, #120
	mov	x0, x19
	mov	x1, x22
	bl	__ZL11parallelSumPKfmiRNSt3__16vectorI7PartialNS1_9allocatorIS3_EEEE
Ltmp15:
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	mov.16b	v8, v0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	d8, [sp, #24]
	add	x8, sp, #24
	; InlineAsm Start
	; InlineAsm End
	fadd	d0, d8, d10
	fabs	d0, d0
	fcmp	d0, d11
	b.gt	LBB0_41
; %bb.18:                               ;   in Loop: Header=BB0_16 Depth=1
	mov	x23, x0
	ldr	x8, [sp, #120]
	ldr	d12, [x8, #8]
	cmp	w22, #2
	b.lo	LBB0_21
; %bb.19:                               ;   in Loop: Header=BB0_16 Depth=1
	add	x8, x8, #136
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov.16b	v0, v12
LBB0_20:                                ;   Parent Loop BB0_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d1, [x8], #128
	fcmp	d12, d1
	fcsel	d12, d1, d12, mi
	fcmp	d1, d0
	fcsel	d0, d1, d0, mi
	subs	x9, x9, #1
	b.ne	LBB0_20
	b	LBB0_22
LBB0_21:                                ;   in Loop: Header=BB0_16 Depth=1
	mov.16b	v0, v12
LBB0_22:                                ;   in Loop: Header=BB0_16 Depth=1
	fdiv	d0, d12, d0
	str	d0, [sp, #40]
	ldp	x8, x9, [sp, #80]
	stp	x21, x24, [sp, #144]
	add	x10, sp, #72
	stp	x10, x8, [sp, #160]
	cmp	x8, x9
	b.hs	LBB0_34
; %bb.23:                               ;   in Loop: Header=BB0_16 Depth=1
	str	d0, [x8], #8
LBB0_24:                                ;   in Loop: Header=BB0_16 Depth=1
	sub	x9, x23, x28
	scvtf	d0, x9
	fdiv	d8, d0, d9
	str	x8, [sp, #80]
	fsub	d0, d8, d12
	str	d0, [sp, #40]
	ldp	x8, x9, [sp, #56]
	stp	x21, x24, [sp, #144]
	add	x10, sp, #48
	stp	x10, x8, [sp, #160]
	cmp	x8, x9
	b.hs	LBB0_36
; %bb.25:                               ;   in Loop: Header=BB0_16 Depth=1
	str	d0, [x8], #8
	mov	x28, x25
LBB0_26:                                ;   in Loop: Header=BB0_16 Depth=1
	str	x8, [sp, #56]
	str	d8, [sp, #40]
	ldp	x8, x9, [sp, #104]
	stp	x21, x24, [sp, #144]
	add	x10, sp, #96
	stp	x10, x8, [sp, #160]
	cmp	x8, x9
	b.hs	LBB0_38
; %bb.27:                               ;   in Loop: Header=BB0_16 Depth=1
	str	d8, [x8], #8
LBB0_28:                                ;   in Loop: Header=BB0_16 Depth=1
	str	x8, [sp, #104]
Ltmp33:
Lloh9:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh10:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh11:
	adrp	x1, l_.str.4@PAGE
Lloh12:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp34:
; %bb.29:                               ;   in Loop: Header=BB0_16 Depth=1
Ltmp35:
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp36:
; %bb.30:                               ;   in Loop: Header=BB0_16 Depth=1
Ltmp37:
	mov	x1, x26
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp38:
; %bb.31:                               ;   in Loop: Header=BB0_16 Depth=1
Ltmp39:
	mov.16b	v0, v8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp40:
; %bb.32:                               ;   in Loop: Header=BB0_16 Depth=1
Ltmp41:
	mov	x1, x27
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp42:
; %bb.33:                               ;   in Loop: Header=BB0_16 Depth=1
	add	w20, w20, #1
	cmp	w20, w28
	b.ne	LBB0_16
	b	LBB0_54
LBB0_34:                                ;   in Loop: Header=BB0_16 Depth=1
Ltmp24:
	add	x0, sp, #144
	bl	__ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv
Ltmp25:
; %bb.35:                               ;   in Loop: Header=BB0_16 Depth=1
	ldr	x8, [sp, #168]
	b	LBB0_24
LBB0_36:                                ;   in Loop: Header=BB0_16 Depth=1
Ltmp27:
	add	x0, sp, #144
	bl	__ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv
Ltmp28:
; %bb.37:                               ;   in Loop: Header=BB0_16 Depth=1
	mov	x28, x25
	ldr	x8, [sp, #168]
	b	LBB0_26
LBB0_38:                                ;   in Loop: Header=BB0_16 Depth=1
Ltmp30:
	add	x0, sp, #144
	bl	__ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv
Ltmp31:
; %bb.39:                               ;   in Loop: Header=BB0_16 Depth=1
	ldr	x8, [sp, #168]
	b	LBB0_28
LBB0_40:
	mov	x20, #0                         ; =0x0
	mov	x24, #0                         ; =0x0
	stp	xzr, xzr, [sp, #72]
	str	xzr, [sp, #88]
	stp	xzr, xzr, [sp, #48]
	str	xzr, [sp, #64]
	b	LBB0_63
LBB0_41:
Ltmp17:
Lloh13:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh14:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh15:
	adrp	x1, l_.str.2@PAGE
Lloh16:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #30                         ; =0x1e
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp18:
; %bb.42:
Ltmp19:
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp20:
; %bb.43:
	mov	w20, #1                         ; =0x1
Ltmp21:
Lloh17:
	adrp	x1, l_.str.3@PAGE
Lloh18:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp22:
; %bb.44:
	ldr	x0, [sp, #48]
	cbz	x0, LBB0_46
LBB0_45:
	str	x0, [sp, #56]
	bl	__ZdlPv
LBB0_46:
	ldr	x0, [sp, #72]
	cbz	x0, LBB0_48
; %bb.47:
	str	x0, [sp, #80]
	bl	__ZdlPv
LBB0_48:
	ldr	x0, [sp, #96]
	cbz	x0, LBB0_50
; %bb.49:
	str	x0, [sp, #104]
	bl	__ZdlPv
LBB0_50:
	ldr	x0, [sp, #120]
	cbz	x0, LBB0_52
; %bb.51:
	str	x0, [sp, #128]
	mov	w1, #128                        ; =0x80
	bl	__ZdlPvSt11align_val_t
LBB0_52:
Lloh19:
	adrp	x21, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh20:
	ldr	x21, [x21, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x21]
	str	x8, [sp, #176]
	ldr	x9, [x21, #24]
	ldur	x8, [x8, #-24]
	add	x22, sp, #176
	str	x9, [x22, x8]
	add	x0, x22, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #176
	add	x1, x21, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x22, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	bl	__ZdlPv
	ldur	x8, [x29, #-160]
Lloh21:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh22:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh23:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_61
LBB0_53:
	mov	x0, x20
	add	sp, sp, #768
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #160            ; 16-byte Folded Reload
	ret
LBB0_54:
	ldp	x23, x8, [sp, #96]
	subs	x25, x8, x23
	ldr	w26, [sp, #12]                  ; 4-byte Folded Reload
	b.eq	LBB0_62
; %bb.55:
	tbnz	x25, #63, LBB0_135
; %bb.56:
Ltmp44:
	mov	x0, x25
	bl	__Znwm
Ltmp45:
; %bb.57:
	mov	x20, x0
	add	x24, x0, x25
	mov	x1, x23
	mov	x2, x25
	bl	_memcpy
	b	LBB0_63
LBB0_58:
	ldr	x0, [x19, #16]
	bl	_atoi
	mov	x26, x0
	cmp	w20, #4
	b.lo	LBB0_4
; %bb.59:
	ldr	x0, [x19, #24]
	bl	_atoi
	mov	x22, x0
	cmp	w0, #0
	b.gt	LBB0_5
; %bb.60:
Lloh24:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh25:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh26:
	adrp	x1, l_.str@PAGE
Lloh27:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #28                         ; =0x1c
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w20, #1                         ; =0x1
	ldur	x8, [x29, #-160]
Lloh28:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh29:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh30:
	ldr	x9, [x9]
	cmp	x9, x8
	b.eq	LBB0_53
LBB0_61:
	bl	___stack_chk_fail
LBB0_62:
	mov	x20, #0                         ; =0x0
	mov	x24, #0                         ; =0x0
LBB0_63:
Ltmp52:
	add	x2, sp, #144
	mov	x0, x20
	mov	x1, x24
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp53:
; %bb.64:
	ldp	x23, x25, [sp, #96]
	cmp	x23, x25
	b.eq	LBB0_67
; %bb.65:
	sub	x8, x25, x23
	sub	x8, x8, #8
	cmp	x8, #24
	b.hs	LBB0_68
; %bb.66:
	movi.2d	v10, #0000000000000000
	mov	x8, x23
	b	LBB0_71
LBB0_67:
	movi.2d	v10, #0000000000000000
	b	LBB0_72
LBB0_68:
	lsr	x8, x8, #3
	add	x9, x8, #1
	and	x10, x9, #0x3ffffffffffffffc
	add	x8, x23, x10, lsl #3
	add	x11, x23, #16
	movi.2d	v10, #0000000000000000
	mov	x12, x10
LBB0_69:                                ; =>This Inner Loop Header: Depth=1
	ldp	d0, d1, [x11, #-16]
	ldp	d2, d3, [x11], #32
	fadd	d0, d10, d0
	fadd	d0, d0, d1
	fadd	d0, d0, d2
	fadd	d10, d0, d3
	subs	x12, x12, #4
	b.ne	LBB0_69
; %bb.70:
	cmp	x9, x10
	b.eq	LBB0_72
LBB0_71:                                ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x8], #8
	fadd	d10, d10, d0
	cmp	x8, x25
	b.ne	LBB0_71
LBB0_72:
Lloh31:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh32:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	sub	x10, x24, x20
	asr	x8, x10, #3
	asr	x9, x10, #4
	add	x9, x20, x9, lsl #3
	tbnz	w10, #3, LBB0_74
; %bb.73:
	ldp	d0, d1, [x9, #-8]
	fadd	d0, d0, d1
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	b	LBB0_75
LBB0_74:
	ldr	d0, [x9]
LBB0_75:
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x8, x8, #1
	ucvtf	d0, x8
	fmov	d1, #0.75000000
	fmul	d11, d0, d1
	fcvtmu	x9, d11
	add	x10, x9, #1
	cmp	x8, x10
	csinc	x10, x8, x9, lo
	ldr	d13, [x20, x9, lsl #3]
	ldr	d15, [x20, x10, lsl #3]
	ucvtf	d12, x8, #2
	fcvtmu	x9, d12
	add	x10, x9, #1
	cmp	x8, x10
	csinc	x8, x8, x9, lo
	ldr	d14, [x20, x9, lsl #3]
	ldr	d8, [x20, x8, lsl #3]
	ldr	d9, [x20]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #16]
Ltmp55:
Lloh33:
	adrp	x1, l_.str.7@PAGE
Lloh34:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp56:
; %bb.76:
Ltmp57:
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp58:
; %bb.77:
Ltmp59:
Lloh35:
	adrp	x1, l_.str.8@PAGE
Lloh36:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp60:
; %bb.78:
Ltmp61:
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp62:
; %bb.79:
Ltmp63:
Lloh37:
	adrp	x1, l_.str.9@PAGE
Lloh38:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp64:
; %bb.80:
Ltmp65:
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp66:
; %bb.81:
Ltmp67:
Lloh39:
	adrp	x1, l_.str.3@PAGE
Lloh40:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp68:
; %bb.82:
Ltmp69:
Lloh41:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh42:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh43:
	adrp	x1, l_.str.10@PAGE
Lloh44:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #34                         ; =0x22
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp70:
; %bb.83:
Ltmp71:
Lloh45:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh46:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh47:
	adrp	x1, l_.str.11@PAGE
Lloh48:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp72:
; %bb.84:
Ltmp73:
	mov.16b	v0, v9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp74:
; %bb.85:
Ltmp75:
Lloh49:
	adrp	x1, l_.str.12@PAGE
Lloh50:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
; %bb.86:
Ltmp77:
	sub	x8, x25, x23
	asr	x8, x8, #3
	ucvtf	d0, x8
	fdiv	d10, d10, d0
	mov.16b	v0, v10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp78:
; %bb.87:
Ltmp79:
Lloh51:
	adrp	x1, l_.str.12@PAGE
Lloh52:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp80:
; %bb.88:
Ltmp81:
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp82:
; %bb.89:
Ltmp83:
Lloh53:
	adrp	x1, l_.str.12@PAGE
Lloh54:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp84:
; %bb.90:
Ltmp85:
	frintm	d0, d11
	fcvtzu	d0, d0
	ucvtf	d0, d0
	fsub	d0, d11, d0
	fsub	d1, d15, d13
	fmadd	d0, d0, d1, d13
	frintm	d1, d12
	fcvtzu	d1, d1
	ucvtf	d1, d1
	fsub	d1, d12, d1
	fsub	d2, d8, d14
	fmadd	d1, d1, d2, d14
	fsub	d11, d0, d1
	mov.16b	v0, v11
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp86:
; %bb.91:
Ltmp87:
Lloh55:
	adrp	x1, l_.str.13@PAGE
Lloh56:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.92:
Ltmp89:
Lloh57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh58:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh59:
	adrp	x1, l_.str.14@PAGE
Lloh60:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp90:
; %bb.93:
	ldp	x23, x24, [sp, #96]
	cmp	x23, x24
	b.eq	LBB0_98
; %bb.94:
Lloh61:
	adrp	x21, __ZNSt3__14coutE@GOTPAGE
Lloh62:
	ldr	x21, [x21, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh63:
	adrp	x22, l_.str.11@PAGE
Lloh64:
	add	x22, x22, l_.str.11@PAGEOFF
LBB0_95:                                ; =>This Inner Loop Header: Depth=1
	ldr	d12, [x23], #8
Ltmp91:
	mov	x0, x21
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp92:
; %bb.96:                               ;   in Loop: Header=BB0_95 Depth=1
Ltmp93:
	mov.16b	v0, v12
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp94:
; %bb.97:                               ;   in Loop: Header=BB0_95 Depth=1
	cmp	x23, x24
	b.ne	LBB0_95
LBB0_98:
Ltmp96:
Lloh65:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh66:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh67:
	adrp	x1, l_.str.3@PAGE
Lloh68:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp97:
; %bb.99:
Ltmp98:
Lloh69:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh70:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh71:
	adrp	x1, l_.str.15@PAGE
Lloh72:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp99:
; %bb.100:
Ltmp100:
	mov.16b	v0, v9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp101:
; %bb.101:
Ltmp102:
Lloh73:
	adrp	x1, l_.str.16@PAGE
Lloh74:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp103:
; %bb.102:
Ltmp104:
	mov.16b	v0, v10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp105:
; %bb.103:
Ltmp106:
Lloh75:
	adrp	x1, l_.str.17@PAGE
Lloh76:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp107:
; %bb.104:
Ltmp108:
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp109:
; %bb.105:
Ltmp110:
Lloh77:
	adrp	x1, l_.str.18@PAGE
Lloh78:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #5                          ; =0x5
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp111:
; %bb.106:
Ltmp112:
	mov.16b	v0, v11
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp113:
; %bb.107:
Ltmp114:
Lloh79:
	adrp	x1, l_.str.3@PAGE
Lloh80:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp115:
; %bb.108:
Ltmp116:
Lloh81:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh82:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh83:
	adrp	x1, l_.str.19@PAGE
Lloh84:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp117:
; %bb.109:
	mov	x22, x0
	ldp	x24, x8, [sp, #72]
	subs	x25, x8, x24
	b.eq	LBB0_113
; %bb.110:
	tbnz	x25, #63, LBB0_133
; %bb.111:
Ltmp119:
	mov	x0, x25
	bl	__Znwm
Ltmp120:
; %bb.112:
	mov	x21, x0
	add	x23, x0, x25
	mov	x1, x24
	mov	x2, x25
	bl	_memcpy
	b	LBB0_114
LBB0_113:
	mov	x21, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
LBB0_114:
Ltmp124:
	add	x2, sp, #144
	mov	x0, x21
	mov	x1, x23
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp125:
; %bb.115:
	sub	x9, x23, x21
	asr	x8, x9, #4
	add	x8, x21, x8, lsl #3
	tbnz	w9, #3, LBB0_117
; %bb.116:
	ldp	d0, d1, [x8, #-8]
	fadd	d0, d0, d1
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	b	LBB0_118
LBB0_117:
	ldr	d0, [x8]
LBB0_118:
Ltmp127:
	mov	x0, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp128:
; %bb.119:
Ltmp129:
Lloh85:
	adrp	x1, l_.str.20@PAGE
Lloh86:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp130:
; %bb.120:
	mov	x22, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #3                          ; =0x3
	str	x9, [x8, #16]
	ldp	x25, x8, [sp, #48]
	subs	x26, x8, x25
	b.eq	LBB0_124
; %bb.121:
	tbnz	x26, #63, LBB0_134
; %bb.122:
Ltmp132:
	mov	x0, x26
	bl	__Znwm
Ltmp133:
; %bb.123:
	mov	x23, x0
	add	x24, x0, x26
	mov	x1, x25
	mov	x2, x26
	bl	_memcpy
	b	LBB0_125
LBB0_124:
	mov	x23, #0                         ; =0x0
	mov	x24, #0                         ; =0x0
LBB0_125:
Ltmp137:
	add	x2, sp, #144
	mov	x0, x23
	mov	x1, x24
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp138:
; %bb.126:
	sub	x9, x24, x23
	asr	x8, x9, #4
	add	x8, x23, x8, lsl #3
	tbnz	w9, #3, LBB0_128
; %bb.127:
	ldp	d0, d1, [x8, #-8]
	fadd	d0, d0, d1
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	b	LBB0_129
LBB0_128:
	ldr	d0, [x8]
LBB0_129:
Ltmp140:
	mov	x0, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp141:
; %bb.130:
Ltmp142:
Lloh87:
	adrp	x1, l_.str.3@PAGE
Lloh88:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp143:
; %bb.131:
	mov	x0, x23
	bl	__ZdlPv
	mov	x0, x21
	bl	__ZdlPv
	mov	x0, x20
	bl	__ZdlPv
	mov	w20, #0                         ; =0x0
	ldr	x0, [sp, #48]
	cbnz	x0, LBB0_45
	b	LBB0_46
LBB0_132:
Ltmp49:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
Ltmp50:
	b	LBB0_136
LBB0_133:
Ltmp121:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
Ltmp122:
	b	LBB0_136
LBB0_134:
Ltmp134:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
Ltmp135:
	b	LBB0_136
LBB0_135:
Ltmp46:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
Ltmp47:
LBB0_136:
	brk	#0x1
LBB0_137:
Ltmp32:
	b	LBB0_170
LBB0_138:
Ltmp29:
	b	LBB0_170
LBB0_139:
Ltmp26:
	b	LBB0_170
LBB0_140:
Ltmp48:
	b	LBB0_170
LBB0_141:
Ltmp139:
	mov	x22, x0
	cbnz	x23, LBB0_160
	b	LBB0_163
LBB0_142:
Ltmp126:
	mov	x22, x0
	cbnz	x21, LBB0_163
; %bb.143:
	cbnz	x20, LBB0_168
LBB0_144:
	ldr	x0, [sp, #48]
	cbnz	x0, LBB0_171
LBB0_145:
	ldr	x0, [sp, #72]
	cbnz	x0, LBB0_172
LBB0_146:
	ldr	x0, [sp, #96]
	cbnz	x0, LBB0_173
LBB0_147:
	ldr	x0, [sp, #120]
	cbz	x0, LBB0_149
LBB0_148:
	str	x0, [sp, #128]
	mov	w1, #128                        ; =0x80
	bl	__ZdlPvSt11align_val_t
LBB0_149:
	add	x0, sp, #176
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x22
	bl	__Unwind_Resume
LBB0_150:
Ltmp54:
	mov	x22, x0
	cbz	x20, LBB0_144
	b	LBB0_168
LBB0_151:
Ltmp136:
	b	LBB0_162
LBB0_152:
Ltmp123:
	mov	x22, x0
	cbz	x20, LBB0_144
	b	LBB0_168
LBB0_153:
Ltmp23:
	b	LBB0_170
LBB0_154:
Ltmp8:
	b	LBB0_156
LBB0_155:
Ltmp5:
LBB0_156:
	mov	x22, x0
	add	x0, sp, #176
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x22
	bl	__Unwind_Resume
LBB0_157:
Ltmp2:
	mov	x22, x0
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x22
	bl	__Unwind_Resume
LBB0_158:
Ltmp51:
	mov	x22, x0
	ldr	x0, [sp, #96]
	cbz	x0, LBB0_147
	b	LBB0_173
LBB0_159:
Ltmp144:
	mov	x22, x0
LBB0_160:
	mov	x0, x23
	bl	__ZdlPv
	b	LBB0_163
LBB0_161:
Ltmp131:
LBB0_162:
	mov	x22, x0
LBB0_163:
	mov	x0, x21
	bl	__ZdlPv
	cbz	x20, LBB0_144
	b	LBB0_168
LBB0_164:
Ltmp16:
	b	LBB0_170
LBB0_165:
Ltmp118:
	mov	x22, x0
	cbz	x20, LBB0_144
	b	LBB0_168
LBB0_166:
Ltmp11:
	mov	x22, x0
	ldr	x0, [sp, #120]
	cbnz	x0, LBB0_148
	b	LBB0_149
LBB0_167:
Ltmp95:
	mov	x22, x0
	cbz	x20, LBB0_144
LBB0_168:
	mov	x0, x20
	bl	__ZdlPv
	ldr	x0, [sp, #48]
	cbz	x0, LBB0_145
	b	LBB0_171
LBB0_169:
Ltmp43:
LBB0_170:
	mov	x22, x0
	ldr	x0, [sp, #48]
	cbz	x0, LBB0_145
LBB0_171:
	str	x0, [sp, #56]
	bl	__ZdlPv
	ldr	x0, [sp, #72]
	cbz	x0, LBB0_146
LBB0_172:
	str	x0, [sp, #80]
	bl	__ZdlPv
	ldr	x0, [sp, #96]
	cbz	x0, LBB0_147
LBB0_173:
	str	x0, [sp, #104]
	bl	__ZdlPv
	ldr	x0, [sp, #120]
	cbz	x0, LBB0_149
	b	LBB0_148
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh21, Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpLdrGotLdr	Lloh28, Lloh29, Lloh30
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGot	Lloh41, Lloh42
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdrGot	Lloh57, Lloh58
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh61, Lloh62
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpLdrGot	Lloh65, Lloh66
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpLdrGot	Lloh81, Lloh82
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh87, Lloh88
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
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp9-Ltmp7                    ;   Call between Ltmp7 and Ltmp9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 6 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp51-Lfunc_begin0            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp42-Ltmp33                  ;   Call between Ltmp33 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin0            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin0            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp22-Ltmp17                  ;   Call between Ltmp17 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp52-Ltmp45                  ;   Call between Ltmp45 and Ltmp52
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin0            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp90-Ltmp55                  ;   Call between Ltmp55 and Ltmp90
	.uleb128 Ltmp118-Lfunc_begin0           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp91-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp94-Ltmp91                  ;   Call between Ltmp91 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin0            ;     jumps to Ltmp95
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp96-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp117-Ltmp96                 ;   Call between Ltmp96 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin0           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin0           ; >> Call Site 20 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp123-Lfunc_begin0           ;     jumps to Ltmp123
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp120-Lfunc_begin0           ; >> Call Site 21 <<
	.uleb128 Ltmp124-Ltmp120                ;   Call between Ltmp120 and Ltmp124
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin0           ; >> Call Site 22 <<
	.uleb128 Ltmp125-Ltmp124                ;   Call between Ltmp124 and Ltmp125
	.uleb128 Ltmp126-Lfunc_begin0           ;     jumps to Ltmp126
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin0           ; >> Call Site 23 <<
	.uleb128 Ltmp130-Ltmp127                ;   Call between Ltmp127 and Ltmp130
	.uleb128 Ltmp131-Lfunc_begin0           ;     jumps to Ltmp131
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin0           ; >> Call Site 24 <<
	.uleb128 Ltmp133-Ltmp132                ;   Call between Ltmp132 and Ltmp133
	.uleb128 Ltmp136-Lfunc_begin0           ;     jumps to Ltmp136
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin0           ; >> Call Site 25 <<
	.uleb128 Ltmp137-Ltmp133                ;   Call between Ltmp133 and Ltmp137
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin0           ; >> Call Site 26 <<
	.uleb128 Ltmp138-Ltmp137                ;   Call between Ltmp137 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin0           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp140-Lfunc_begin0           ; >> Call Site 27 <<
	.uleb128 Ltmp143-Ltmp140                ;   Call between Ltmp140 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin0           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin0            ; >> Call Site 28 <<
	.uleb128 Ltmp50-Ltmp49                  ;   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin0            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp121-Lfunc_begin0           ; >> Call Site 29 <<
	.uleb128 Ltmp122-Ltmp121                ;   Call between Ltmp121 and Ltmp122
	.uleb128 Ltmp123-Lfunc_begin0           ;     jumps to Ltmp123
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin0           ;     jumps to Ltmp136
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin0            ; >> Call Site 31 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin0            ; >> Call Site 32 <<
	.uleb128 Lfunc_end0-Ltmp47              ;   Call between Ltmp47 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	str	xzr, [x0, #472]
Lloh89:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh90:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh91:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh92:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp145:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp146:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp148:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp149:
; %bb.2:
Ltmp151:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp152:
; %bb.3:
	cbnz	x0, LBB1_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp153:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp154:
LBB1_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_6:
Ltmp150:
	mov	x20, x0
	b	LBB1_9
LBB1_7:
Ltmp147:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB1_8:
Ltmp155:
	mov	x20, x0
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB1_9:
	add	x1, x23, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh91, Lloh92
	.loh AdrpLdrGot	Lloh89, Lloh90
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp145-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp146-Ltmp145                ;   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin1           ;     jumps to Ltmp147
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp149-Ltmp148                ;   Call between Ltmp148 and Ltmp149
	.uleb128 Ltmp150-Lfunc_begin1           ;     jumps to Ltmp150
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp154-Ltmp151                ;   Call between Ltmp151 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp154             ;   Call between Ltmp154 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL11parallelSumPKfmiRNSt3__16vectorI7PartialNS1_9allocatorIS3_EEEE
__ZL11parallelSumPKfmiRNSt3__16vectorI7PartialNS1_9allocatorIS3_EEEE: ; @_ZL11parallelSumPKfmiRNSt3__16vectorI7PartialNS1_9allocatorIS3_EEEE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #208
	stp	d9, d8, [sp, #96]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x19, x2
	mov	x22, x1
	mov	x21, x0
	stp	xzr, xzr, [sp, #40]
	str	xzr, [sp, #56]
	ubfiz	x0, x1, #3, #32
Ltmp156:
	bl	__Znwm
Ltmp157:
; %bb.1:
	mov	x20, x0
	mov	x24, #0                         ; =0x0
	mov	x25, #0                         ; =0x0
	mov	w23, w22
	add	x8, x0, x23, lsl #3
	stp	x0, x0, [sp, #40]
	str	x8, [sp, #56]
	mov	w26, #57600                     ; =0xe100
	movk	w26, #1525, lsl #16
	sub	w27, w22, #1
	add	x28, sp, #40
	udiv	w22, w26, w22
LBB2_2:                                 ; =>This Inner Loop Header: Depth=1
	cmp	x27, x25
	csel	x8, x26, x22, eq
	stp	x21, x24, [sp]
	str	x8, [sp, #16]
	str	w25, [sp, #24]
	str	x19, [sp, #32]
	stp	x28, x20, [sp, #80]
	ldr	x8, [sp, #56]
	add	x9, sp, #88
	str	x9, [sp, #64]
	mov	x9, sp
	str	x9, [sp, #72]
	cmp	x20, x8
	b.hs	LBB2_6
; %bb.3:                                ;   in Loop: Header=BB2_2 Depth=1
Ltmp162:
	mov	x1, sp
	mov	x0, x20
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB9nqe220106IS2_JZL11parallelSumPKfmiRNS_6vectorI7PartialNS1_IS9_EEEEE3$_0ELi0EEEvRS3_PT_DpOT0_
Ltmp163:
; %bb.4:                                ;   in Loop: Header=BB2_2 Depth=1
	ldr	x8, [sp, #88]
	add	x8, x8, #8
	str	x8, [sp, #88]
LBB2_5:                                 ;   in Loop: Header=BB2_2 Depth=1
	ldr	x20, [sp, #88]
	str	x20, [sp, #48]
	add	x25, x25, #1
	sub	x26, x26, x22
	add	x24, x24, x22
	cmp	x23, x25
	b.ne	LBB2_2
	b	LBB2_7
LBB2_6:                                 ;   in Loop: Header=BB2_2 Depth=1
Ltmp159:
	add	x0, sp, #64
	bl	__ZZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZL11parallelSumPKfmiRNS0_I7PartialNS2_IS8_EEEEE3$_0EEERS1_DpOT_ENKUlvE0_clEv
Ltmp160:
	b	LBB2_5
LBB2_7:
	ldr	x21, [sp, #40]
	cmp	x21, x20
	b.eq	LBB2_10
LBB2_8:                                 ; =>This Inner Loop Header: Depth=1
Ltmp165:
	mov	x0, x21
	bl	__ZNSt3__16thread4joinEv
Ltmp166:
; %bb.9:                                ;   in Loop: Header=BB2_8 Depth=1
	add	x21, x21, #8
	cmp	x21, x20
	b.ne	LBB2_8
LBB2_10:
	ldr	x8, [x19]
	cmp	w23, #4
	b.hs	LBB2_12
; %bb.11:
	mov	x9, #0                          ; =0x0
	movi.2d	v8, #0000000000000000
	b	LBB2_15
LBB2_12:
	and	x9, x23, #0x7ffffffc
	add	x10, x8, #256
	movi.2d	v8, #0000000000000000
	mov	x11, x9
LBB2_13:                                ; =>This Inner Loop Header: Depth=1
	ldur	d0, [x10, #-256]
	ldur	d1, [x10, #-128]
	ldr	d2, [x10]
	ldr	d3, [x10, #128]
	fadd	d0, d8, d0
	fadd	d0, d0, d1
	fadd	d0, d0, d2
	fadd	d8, d0, d3
	add	x10, x10, #512
	subs	x11, x11, #4
	b.ne	LBB2_13
; %bb.14:
	cmp	x9, x23
	b.eq	LBB2_17
LBB2_15:
	add	x8, x8, x9, lsl #7
	sub	x9, x23, x9
LBB2_16:                                ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x8], #128
	fadd	d8, d8, d0
	subs	x9, x9, #1
	b.ne	LBB2_16
LBB2_17:
	ldr	x19, [sp, #40]
	cbz	x19, LBB2_22
; %bb.18:
	ldr	x0, [sp, #48]
	mov	x8, x19
	cmp	x19, x0
	b.eq	LBB2_21
LBB2_19:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x19
	b.ne	LBB2_19
; %bb.20:
	ldr	x8, [sp, #40]
LBB2_21:
	str	x19, [sp, #48]
	mov	x0, x8
	bl	__ZdlPv
LBB2_22:
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #96]               ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB2_23:
Ltmp161:
	b	LBB2_26
LBB2_24:
Ltmp158:
	b	LBB2_26
LBB2_25:
Ltmp167:
LBB2_26:
	mov	x19, x0
	add	x0, sp, #40
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_27:
Ltmp164:
	mov	x19, x0
	str	x20, [sp, #48]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp156-Lfunc_begin2           ; >> Call Site 1 <<
	.uleb128 Ltmp157-Ltmp156                ;   Call between Ltmp156 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin2           ;     jumps to Ltmp158
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp163-Ltmp162                ;   Call between Ltmp162 and Ltmp163
	.uleb128 Ltmp164-Lfunc_begin2           ;     jumps to Ltmp164
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp160-Ltmp159                ;   Call between Ltmp159 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin2           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp166-Ltmp165                ;   Call between Ltmp165 and Ltmp166
	.uleb128 Ltmp167-Lfunc_begin2           ;     jumps to Ltmp167
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp166-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp166             ;   Call between Ltmp166 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh93:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh94:
	ldr	x20, [x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	add	x0, x0, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh93, Lloh94
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev ; -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev
	.p2align	2
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev: ; @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B9nqe220106Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x20, [x0]
	cbz	x20, LBB4_5
; %bb.1:
	ldr	x0, [x19, #8]
	mov	x8, x20
	cmp	x20, x0
	b.eq	LBB4_4
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x20
	b.ne	LBB4_2
; %bb.3:
	ldr	x8, [x19]
LBB4_4:
	str	x20, [x19, #8]
	mov	x0, x8
	bl	__ZdlPv
LBB4_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev ; -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev
	.p2align	2
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev: ; @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh95:
	adrp	x0, l_.str.21@PAGE
Lloh96:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe220106EPKc
	.loh AdrpAdd	Lloh95, Lloh96
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.globl	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev: ; @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldp	x20, x8, [x0, #8]
	cmp	x20, x8
	b.eq	LBB6_2
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	sub	x0, x8, #8
	str	x0, [x19, #16]
	bl	__ZNSt3__16threadD1Ev
	ldr	x8, [x19, #16]
	cmp	x20, x8
	b.ne	LBB6_1
LBB6_2:
	ldr	x0, [x19]
	cbz	x0, LBB6_4
; %bb.3:
	bl	__ZdlPv
LBB6_4:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
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
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe220106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe220106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe220106EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB9nqe220106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe220106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe220106EPKc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp168:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B9nqe220106EPKc
Ltmp169:
; %bb.1:
Lloh97:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh98:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh99:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh100:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB8_2:
Ltmp170:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh99, Lloh100
	.loh AdrpLdrGot	Lloh97, Lloh98
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp168-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp168
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp169-Ltmp168                ;   Call between Ltmp168 and Ltmp169
	.uleb128 Ltmp170-Lfunc_begin3           ;     jumps to Ltmp170
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp169             ;   Call between Ltmp169 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B9nqe220106EPKc ; -- Begin function _ZNSt12length_errorC1B9nqe220106EPKc
	.globl	__ZNSt12length_errorC1B9nqe220106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B9nqe220106EPKc
	.p2align	2
__ZNSt12length_errorC1B9nqe220106EPKc:  ; @_ZNSt12length_errorC1B9nqe220106EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh101:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh102:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh101, Lloh102
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB9nqe220106v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe220106v
	.globl	__ZSt28__throw_bad_array_new_lengthB9nqe220106v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB9nqe220106v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB9nqe220106v: ; @_ZSt28__throw_bad_array_new_lengthB9nqe220106v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh103:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh104:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh105:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh106:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh105, Lloh106
	.loh AdrpLdrGot	Lloh103, Lloh104
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZL11parallelSumPKfmiRNS0_I7PartialNS2_IS8_EEEEE3$_0EEERS1_DpOT_ENKUlvE0_clEv
__ZZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZL11parallelSumPKfmiRNS0_I7PartialNS2_IS8_EEEEE3$_0EEERS1_DpOT_ENKUlvE0_clEv: ; @"_ZZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZL11parallelSumPKfmiRNS0_I7PartialNS2_IS8_EEEEE3$_0EEERS1_DpOT_ENKUlvE0_clEv"
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	ldr	x23, [x0, #16]
	ldp	x19, x13, [x23]
	sub	x27, x13, x19
	asr	x8, x27, #3
	add	x8, x8, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB11_18
; %bb.1:
	ldr	x21, [x0, #8]
	mov	x9, x23
	ldr	x10, [x9, #16]!
	mov	x11, #9223372036854775800       ; =0x7ffffffffffffff8
	sub	x10, x10, x19
	asr	x12, x10, #2
	cmp	x12, x8
	csel	x8, x12, x8, hi
	cmp	x10, x11
	mov	x10, #2305843009213693951       ; =0x1fffffffffffffff
	csel	x24, x8, x10, lo
	str	x9, [sp, #40]
	str	x13, [sp]                       ; 8-byte Folded Spill
	cbz	x24, LBB11_4
; %bb.2:
	lsr	x8, x24, #61
	cbnz	x8, LBB11_19
; %bb.3:
	mov	x28, x0
	lsl	x0, x24, #3
	bl	__Znwm
	mov	x20, x0
	b	LBB11_5
LBB11_4:
	mov	x28, x0
	mov	x20, #0                         ; =0x0
LBB11_5:
	add	x22, x20, x27
	stp	x20, x22, [sp, #8]
	add	x24, x20, x24, lsl #3
	stp	x22, x24, [sp, #24]
Ltmp171:
	mov	x0, x22
	mov	x1, x21
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB9nqe220106IS2_JZL11parallelSumPKfmiRNS_6vectorI7PartialNS1_IS9_EEEEE3$_0ELi0EEEvRS3_PT_DpOT0_
Ltmp172:
; %bb.6:
	ldp	x0, x26, [x23]
	subs	x8, x26, x0
	sub	x25, x22, x8
	add	x21, x22, #8
	subs	x10, x26, x0
	b.eq	LBB11_15
; %bb.7:
	sub	x11, x10, #8
	mov	x8, x0
	mov	x9, x25
	cmp	x11, #152
	b.lo	LBB11_12
; %bb.8:
	and	x8, x11, #0xfffffffffffffff8
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	add	x9, x8, x9
	add	x12, x10, x19
	sub	x9, x9, x12
	add	x9, x9, x20
	add	x9, x9, #8
	add	x8, x0, x8
	add	x8, x8, #8
	cmp	x25, x8
	ccmp	x0, x9, #2, lo
	mov	x8, x0
	mov	x9, x25
	b.lo	LBB11_12
; %bb.9:
	asr	x13, x10, #3
	lsr	x8, x11, #3
	add	x10, x8, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x9, x11, #3
	add	x8, x0, x9
	add	x9, x25, x9
	add	x12, x0, #32
	sub	x13, x27, x13, lsl #3
	add	x13, x13, x20
	add	x13, x13, #32
	movi.2d	v0, #0000000000000000
	mov	x14, x11
LBB11_10:                               ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x12, #-32]
	ldp	q3, q4, [x12]
	stp	q1, q2, [x13, #-32]
	stp	q0, q0, [x12, #-32]
	stp	q0, q0, [x12], #64
	stp	q3, q4, [x13], #64
	subs	x14, x14, #8
	b.ne	LBB11_10
; %bb.11:
	cmp	x10, x11
	b.eq	LBB11_13
LBB11_12:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8]
	str	x10, [x9], #8
	str	xzr, [x8], #8
	cmp	x8, x26
	b.ne	LBB11_12
LBB11_13:                               ; =>This Inner Loop Header: Depth=1
	bl	__ZNSt3__16threadD1Ev
	add	x0, x0, #8
	cmp	x0, x26
	b.ne	LBB11_13
; %bb.14:
	ldr	x0, [x23]
LBB11_15:
	stp	x25, x21, [x23]
	str	x24, [x23, #16]
	cbz	x0, LBB11_17
; %bb.16:
	bl	__ZdlPv
LBB11_17:
	ldr	x8, [x28]
	str	x21, [x8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB11_18:
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB9nqe220106Ev
LBB11_19:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe220106v
LBB11_20:
Ltmp173:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp171-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp171
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp172-Ltmp171                ;   Call between Ltmp171 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin4           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp172             ;   Call between Ltmp172 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB9nqe220106IS2_JZL11parallelSumPKfmiRNS_6vectorI7PartialNS1_IS9_EEEEE3$_0ELi0EEEvRS3_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB9nqe220106IS2_JZL11parallelSumPKfmiRNS_6vectorI7PartialNS1_IS9_EEEEE3$_0ELi0EEEvRS3_PT_DpOT0_: ; @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB9nqe220106IS2_JZL11parallelSumPKfmiRNS_6vectorI7PartialNS1_IS9_EEEEE3$_0ELi0EEEvRS3_PT_DpOT0_"
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x1
	mov	x19, x0
	mov	w0, #8                          ; =0x8
	bl	__Znwm
	mov	x21, x0
Ltmp174:
	bl	__ZNSt3__115__thread_structC1Ev
Ltmp175:
; %bb.1:
	str	x21, [sp, #8]
Ltmp177:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp178:
; %bb.2:
	mov	x3, x0
	stp	x0, xzr, [sp]
	str	x21, [x0]
	ldp	q0, q1, [x20]
	stur	q0, [x0, #8]
	stur	q1, [x0, #24]
	ldr	x8, [x20, #32]
	str	x8, [x0, #40]
Ltmp180:
Lloh107:
	adrp	x2, __ZNSt3__114__thread_proxyB9nqe220106INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorISA_EEEEE3$_0EEEEEPvSH_@PAGE
Lloh108:
	add	x2, x2, __ZNSt3__114__thread_proxyB9nqe220106INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorISA_EEEEE3$_0EEEEEPvSH_@PAGEOFF
	mov	x0, x19
	mov	x1, #0                          ; =0x0
	bl	_pthread_create
Ltmp181:
; %bb.3:
	cbnz	w0, LBB12_5
; %bb.4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB12_5:
Ltmp182:
Lloh109:
	adrp	x1, l_.str.22@PAGE
Lloh110:
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__120__throw_system_errorEiPKc
Ltmp183:
; %bb.6:
	brk	#0x1
LBB12_7:
Ltmp179:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_8:
Ltmp176:
	mov	x19, x0
	mov	x0, x21
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_9:
Ltmp184:
	mov	x19, x0
	mov	x0, sp
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorIS9_EEEEE3$_0EEENS3_ISF_EEED1B9nqe220106Ev
	add	x0, sp, #8
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh109, Lloh110
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp174-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp174
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin5           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin5           ;     jumps to Ltmp179
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp183-Ltmp180                ;   Call between Ltmp180 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin5           ;     jumps to Ltmp184
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Lfunc_end5-Ltmp183             ;   Call between Ltmp183 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__114__thread_proxyB9nqe220106INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorISA_EEEEE3$_0EEEEEPvSH_
__ZNSt3__114__thread_proxyB9nqe220106INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorISA_EEEEE3$_0EEEEEPvSH_: ; @"_ZNSt3__114__thread_proxyB9nqe220106INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorISA_EEEEE3$_0EEEEEPvSH_"
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	str	x0, [sp, #8]
Ltmp185:
	bl	__ZNSt3__119__thread_local_dataEv
Ltmp186:
; %bb.1:
	ldr	x1, [x19]
	str	xzr, [x19]
	ldr	x0, [x0]
Ltmp187:
	bl	_pthread_setspecific
Ltmp188:
; %bb.2:
	; InlineAsm Start
	; InlineAsm End
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	ldp	x8, x9, [x19, #8]
	add	x0, x8, x9, lsl #2
	ldr	x1, [x19, #24]
	bl	__ZL6kernelPKfm
	ldr	x8, [x19, #40]
	ldrsw	x9, [x19, #32]
	ldr	x8, [x8]
	lsl	x9, x9, #7
	str	d0, [x8, x9]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x20
	scvtf	d0, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	ldr	x8, [x19, #40]
	ldrsw	x9, [x19, #32]
	ldr	x8, [x8]
	add	x8, x8, x9, lsl #7
	str	d0, [x8, #8]
	ldr	x0, [x19]
	str	xzr, [x19]
	cbz	x0, LBB13_4
; %bb.3:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB13_4:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB13_5:
Ltmp189:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorIS9_EEEEE3$_0EEENS3_ISF_EEED1B9nqe220106Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp185-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp188-Ltmp185                ;   Call between Ltmp185 and Ltmp188
	.uleb128 Ltmp189-Lfunc_begin6           ;     jumps to Ltmp189
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Lfunc_end6-Ltmp188             ;   Call between Ltmp188 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorIS9_EEEEE3$_0EEENS3_ISF_EEED1B9nqe220106Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorIS9_EEEEE3$_0EEENS3_ISF_EEED1B9nqe220106Ev: ; @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZL11parallelSumPKfmiRNS_6vectorI7PartialNS_9allocatorIS9_EEEEE3$_0EEENS3_ISF_EEED1B9nqe220106Ev"
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x19, [x0]
	str	xzr, [x0]
	cbz	x19, LBB14_4
; %bb.1:
	mov	x20, x0
	ldr	x0, [x19]
	str	xzr, [x19]
	cbz	x0, LBB14_3
; %bb.2:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB14_3:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x20
LBB14_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev
	.globl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev
	.p2align	2
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B9nqe220106Ev
	.cfi_startproc
; %bb.0:
	mov	x8, x0
	ldr	x0, [x0]
	str	xzr, [x8]
	cbz	x0, LBB15_2
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x8
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
	mov	x8, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
LBB15_2:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL6kernelPKfm
__ZL6kernelPKfm:                        ; @_ZL6kernelPKfm
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB16_3
; %bb.1:
	cmp	x1, #3
	b.hi	LBB16_4
; %bb.2:
	mov	x8, #0                          ; =0x0
	movi.2d	v0, #0000000000000000
	b	LBB16_13
LBB16_3:
	movi.2d	v0, #0000000000000000
	ret
LBB16_4:
	cmp	x1, #16
	b.hs	LBB16_6
; %bb.5:
	mov	x8, #0                          ; =0x0
	movi.2d	v0, #0000000000000000
	b	LBB16_10
LBB16_6:
	and	x8, x1, #0xfffffffffffffff0
	add	x9, x0, #32
	movi.2d	v0, #0000000000000000
	mov	x10, x8
LBB16_7:                                ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x9, #-32]
	ldp	q3, q4, [x9], #64
	fcvtl2	v5.2d, v1.4s
	mov	d6, v5[1]
	fcvtl	v1.2d, v1.2s
	mov	d7, v1[1]
	fcvtl2	v16.2d, v2.4s
	mov	d17, v16[1]
	fcvtl	v2.2d, v2.2s
	mov	d18, v2[1]
	fcvtl2	v19.2d, v3.4s
	mov	d20, v19[1]
	fcvtl	v3.2d, v3.2s
	mov	d21, v3[1]
	fcvtl2	v22.2d, v4.4s
	mov	d23, v22[1]
	fcvtl	v4.2d, v4.2s
	mov	d24, v4[1]
	fadd	d0, d0, d1
	fadd	d0, d0, d7
	fadd	d0, d0, d5
	fadd	d0, d0, d6
	fadd	d0, d0, d2
	fadd	d0, d0, d18
	fadd	d0, d0, d16
	fadd	d0, d0, d17
	fadd	d0, d0, d3
	fadd	d0, d0, d21
	fadd	d0, d0, d19
	fadd	d0, d0, d20
	fadd	d0, d0, d4
	fadd	d0, d0, d24
	fadd	d0, d0, d22
	fadd	d0, d0, d23
	subs	x10, x10, #16
	b.ne	LBB16_7
; %bb.8:
	cmp	x1, x8
	b.eq	LBB16_15
; %bb.9:
	tst	x1, #0xc
	b.eq	LBB16_13
LBB16_10:
	mov	x10, x8
	and	x8, x1, #0xfffffffffffffffc
	sub	x9, x10, x8
	add	x10, x0, x10, lsl #2
LBB16_11:                               ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x10], #16
	fcvtl2	v2.2d, v1.4s
	mov	d3, v2[1]
	fcvtl	v1.2d, v1.2s
	mov	d4, v1[1]
	fadd	d0, d0, d1
	fadd	d0, d0, d4
	fadd	d0, d0, d2
	fadd	d0, d0, d3
	adds	x9, x9, #4
	b.ne	LBB16_11
; %bb.12:
	cmp	x1, x8
	b.eq	LBB16_15
LBB16_13:
	sub	x9, x1, x8
	add	x8, x0, x8, lsl #2
LBB16_14:                               ; =>This Inner Loop Header: Depth=1
	ldr	s1, [x8], #4
	fcvt	d1, s1
	fadd	d0, d0, d1
	subs	x9, x9, #1
	b.ne	LBB16_14
LBB16_15:
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe220106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp190:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp191:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB17_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB17_7
; %bb.3:
Ltmp193:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp194:
; %bb.4:
Ltmp195:
Lloh111:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh112:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp196:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp197:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp198:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB17_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp200:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp201:
; %bb.8:
	cbnz	x0, LBB17_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp203:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp204:
LBB17_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB17_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB17_12:
Ltmp205:
	b	LBB17_15
LBB17_13:
Ltmp199:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB17_16
LBB17_14:
Ltmp202:
LBB17_15:
	mov	x20, x0
LBB17_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB17_18
LBB17_17:
Ltmp192:
	mov	x20, x0
LBB17_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp206:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp207:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB17_11
LBB17_20:
Ltmp208:
	mov	x19, x0
Ltmp209:
	bl	___cxa_end_catch
Ltmp210:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB17_22:
Ltmp211:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh111, Lloh112
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp190-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp191-Ltmp190                ;   Call between Ltmp190 and Ltmp191
	.uleb128 Ltmp192-Lfunc_begin7           ;     jumps to Ltmp192
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp193-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp194-Ltmp193                ;   Call between Ltmp193 and Ltmp194
	.uleb128 Ltmp202-Lfunc_begin7           ;     jumps to Ltmp202
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp195-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp198-Ltmp195                ;   Call between Ltmp195 and Ltmp198
	.uleb128 Ltmp199-Lfunc_begin7           ;     jumps to Ltmp199
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp200-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Ltmp201-Ltmp200                ;   Call between Ltmp200 and Ltmp201
	.uleb128 Ltmp202-Lfunc_begin7           ;     jumps to Ltmp202
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp203-Lfunc_begin7           ; >> Call Site 5 <<
	.uleb128 Ltmp204-Ltmp203                ;   Call between Ltmp203 and Ltmp204
	.uleb128 Ltmp205-Lfunc_begin7           ;     jumps to Ltmp205
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp204-Lfunc_begin7           ; >> Call Site 6 <<
	.uleb128 Ltmp206-Ltmp204                ;   Call between Ltmp204 and Ltmp206
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp206-Lfunc_begin7           ; >> Call Site 7 <<
	.uleb128 Ltmp207-Ltmp206                ;   Call between Ltmp206 and Ltmp207
	.uleb128 Ltmp208-Lfunc_begin7           ;     jumps to Ltmp208
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin7           ; >> Call Site 8 <<
	.uleb128 Ltmp209-Ltmp207                ;   Call between Ltmp207 and Ltmp209
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp209-Lfunc_begin7           ; >> Call Site 9 <<
	.uleb128 Ltmp210-Ltmp209                ;   Call between Ltmp209 and Ltmp210
	.uleb128 Ltmp211-Lfunc_begin7           ;     jumps to Ltmp211
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp210-Lfunc_begin7           ; >> Call Site 10 <<
	.uleb128 Lfunc_end7-Ltmp210             ;   Call between Ltmp210 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
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
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe220106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB18_16
; %bb.1:
	mov	x23, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	mov	x24, x1
	ldr	x26, [x4, #24]
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB18_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x24
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB18_15
LBB18_3:
	sub	x8, x22, x24
	cmp	x26, x8
	b.le	LBB18_12
; %bb.4:
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x24, x26, x8
	cmp	x24, x9
	b.hs	LBB18_17
; %bb.5:
	cmp	x24, #23
	b.hs	LBB18_7
; %bb.6:
	strb	w24, [sp, #31]
	add	x25, sp, #8
	b	LBB18_8
LBB18_7:
	and	x8, x24, #0x7ffffffffffffff8
	add	x8, x8, #8
	mov	w9, #25                         ; =0x19
	cmp	x8, #24
	csel	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x0, x24, [sp, #8]
	str	x8, [sp, #24]
LBB18_8:
	mov	x0, x25
	mov	x1, x23
	mov	x2, x24
	bl	_memset
	strb	wzr, [x25, x24]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp212:
	mov	x0, x19
	mov	x2, x24
	blr	x8
Ltmp213:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB18_11
; %bb.10:
	cmp	x0, x24
	b.ne	LBB18_15
	b	LBB18_12
LBB18_11:
	ldr	x8, [sp, #8]
	mov	x23, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x23, x24
	b.ne	LBB18_15
LBB18_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB18_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB18_15
LBB18_14:
	str	xzr, [x20, #24]
	b	LBB18_16
LBB18_15:
	mov	x19, #0                         ; =0x0
LBB18_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB18_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev
LBB18_18:
Ltmp214:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB18_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB18_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table18:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp212-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp212
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp212-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp213-Ltmp212                ;   Call between Ltmp212 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin8           ;     jumps to Ltmp214
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp213-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp213             ;   Call between Ltmp213 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh113:
	adrp	x0, l_.str.23@PAGE
Lloh114:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe220106EPKc
	.loh AdrpAdd	Lloh113, Lloh114
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh115:
	adrp	x0, l_.str.21@PAGE
Lloh116:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe220106EPKc
	.loh AdrpAdd	Lloh115, Lloh116
	.cfi_endproc
                                        ; -- End function
	.globl	__ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv ; -- Begin function _ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv
	.weak_def_can_be_hidden	__ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv
	.p2align	2
__ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv: ; @_ZZNSt3__16vectorIdNS_9allocatorIdEEE12emplace_backIJdEEERdDpOT_ENKUlvE0_clEv
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	ldr	x23, [x0, #16]
	ldp	x20, x8, [x23]
	sub	x21, x8, x20
	asr	x24, x21, #3
	add	x8, x24, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB21_5
; %bb.1:
	ldr	x9, [x23, #16]
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	sub	x9, x9, x20
	asr	x11, x9, #2
	cmp	x11, x8
	csel	x8, x11, x8, hi
	cmp	x9, x10
	mov	x9, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x8, x8, x9, lo
	lsr	x9, x8, #61
	cbnz	x9, LBB21_6
; %bb.2:
	mov	x19, x0
	ldr	x26, [x0, #8]
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x25, x0, x21
	add	x27, x0, x22
	ldr	d0, [x26]
	sub	x22, x25, x24, lsl #3
	str	d0, [x25], #8
	mov	x0, x22
	mov	x1, x20
	mov	x2, x21
	bl	_memcpy
	stp	x22, x25, [x23]
	str	x27, [x23, #16]
	cbz	x20, LBB21_4
; %bb.3:
	mov	x0, x20
	bl	__ZdlPv
LBB21_4:
	ldr	x8, [x19]
	str	x25, [x8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB21_5:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe220106Ev
LBB21_6:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe220106v
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Error: threads must be >= 1\n"

l_.str.1:                               ; @.str.1
	.asciz	"data.bin"

l_.str.2:                               ; @.str.2
	.asciz	"Error: Incorrect sum on trial "

l_.str.3:                               ; @.str.3
	.asciz	"\n"

l_.str.4:                               ; @.str.4
	.asciz	"trial "

l_.str.5:                               ; @.str.5
	.asciz	": "

l_.str.6:                               ; @.str.6
	.asciz	" ms\n"

l_.str.7:                               ; @.str.7
	.asciz	"\nconfig: warmup="

l_.str.8:                               ; @.str.8
	.asciz	"  trials="

l_.str.9:                               ; @.str.9
	.asciz	"  threads="

l_.str.10:                              ; @.str.10
	.asciz	"  min      mean    median     IQR\n"

l_.str.11:                              ; @.str.11
	.asciz	" "

l_.str.12:                              ; @.str.12
	.asciz	"    "

l_.str.13:                              ; @.str.13
	.asciz	"   ms\n\n"

l_.str.14:                              ; @.str.14
	.asciz	"SAMPLES:"

l_.str.15:                              ; @.str.15
	.asciz	"STATS: min="

l_.str.16:                              ; @.str.16
	.asciz	" mean="

l_.str.17:                              ; @.str.17
	.asciz	" median="

l_.str.18:                              ; @.str.18
	.asciz	" iqr="

l_.str.19:                              ; @.str.19
	.asciz	"THREADS: spread="

l_.str.20:                              ; @.str.20
	.asciz	" overhead_ms="

l_.str.21:                              ; @.str.21
	.asciz	"vector"

l_.str.22:                              ; @.str.22
	.asciz	"thread constructor failed"

l_.str.23:                              ; @.str.23
	.asciz	"basic_string"

.subsections_via_symbols
