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
	sub	sp, sp, #640
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
	mov	x19, x0
	mov	x20, x1
	ldr	x0, [x1, #8]
	bl	_atoi
	mov	x28, x0
	cmp	w19, #2
	b.ne	LBB0_4
; %bb.2:
	mov	w26, #3                         ; =0x3
	b	LBB0_5
LBB0_3:
	mov	w26, #3                         ; =0x3
	mov	w28, #30                        ; =0x1e
	b	LBB0_5
LBB0_4:
	ldr	x0, [x20, #16]
	bl	_atoi
	mov	x26, x0
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
	adrp	x1, l_.str@PAGE
Lloh4:
	add	x1, x1, l_.str@PAGEOFF
	add	x0, sp, #48
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp1:
; %bb.6:
Ltmp3:
	add	x0, sp, #48
	mov	x1, x19
	mov	w2, #33792                      ; =0x8400
	movk	w2, #6103, lsl #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl
Ltmp4:
; %bb.7:
	cmp	w26, #1
	b.lt	LBB0_10
; %bb.8:
	add	x20, sp, #32
	mov	x21, x26
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	; InlineAsm End
	mov	x0, x19
	bl	__ZL6kernelPKfm
	str	d0, [sp, #32]
	; InlineAsm Start
	; InlineAsm End
	subs	w21, w21, #1
	b.ne	LBB0_9
LBB0_10:
	movi.2d	v10, #0000000000000000
	cbz	w28, LBB0_33
; %bb.11:
	tbnz	w28, #31, LBB0_87
; %bb.12:
	str	w26, [sp, #16]                  ; 4-byte Folded Spill
	sxtw	x20, w28
	lsl	x0, x20, #3
Ltmp6:
	bl	__Znwm
Ltmp7:
; %bb.13:
	mov	x25, x0
	mov	w21, #0                         ; =0x0
	add	x23, x0, x20, lsl #3
	add	x22, sp, #24
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d9, x8
	mov	x8, #236961935654912            ; =0xd78400000000
	movk	x8, #49559, lsl #48
	fmov	d11, x8
	mov	x8, #43516                      ; =0xa9fc
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
Lloh5:
	adrp	x26, l_.str.4@PAGE
Lloh6:
	add	x26, x26, l_.str.4@PAGEOFF
	fmov	d12, x8
	mov	x24, x0
Lloh7:
	adrp	x27, l_.str.5@PAGE
Lloh8:
	add	x27, x27, l_.str.5@PAGEOFF
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	; InlineAsm Start
	; InlineAsm End
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	mov	x0, x19
	bl	__ZL6kernelPKfm
	mov.16b	v8, v0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	d8, [sp, #24]
	; InlineAsm Start
	; InlineAsm End
	fadd	d0, d8, d11
	fabs	d0, d0
	fcmp	d0, d12
	b.gt	LBB0_77
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=1
	sub	x8, x0, x20
	scvtf	d0, x8
	fdiv	d8, d0, d9
	cmp	x24, x23
	b.hs	LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_14 Depth=1
	str	d8, [x24], #8
	b	LBB0_23
LBB0_17:                                ;   in Loop: Header=BB0_14 Depth=1
	mov	x22, x28
	sub	x28, x24, x25
	asr	x20, x28, #3
	add	x8, x20, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB0_84
; %bb.18:                               ;   in Loop: Header=BB0_14 Depth=1
	sub	x9, x23, x25
	asr	x10, x9, #2
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x9, x10
	mov	x9, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x23, x8, x9, lo
	lsr	x8, x23, #61
	cbnz	x8, LBB0_85
; %bb.19:                               ;   in Loop: Header=BB0_14 Depth=1
	lsl	x0, x23, #3
Ltmp15:
	bl	__Znwm
Ltmp16:
; %bb.20:                               ;   in Loop: Header=BB0_14 Depth=1
	add	x24, x0, x28
	add	x23, x0, x23, lsl #3
	sub	x20, x24, x20, lsl #3
	str	d8, [x24], #8
	mov	x0, x20
	mov	x1, x25
	mov	x2, x28
	bl	_memcpy
	cbz	x25, LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_14 Depth=1
	mov	x0, x25
	bl	__ZdlPv
LBB0_22:                                ;   in Loop: Header=BB0_14 Depth=1
	mov	x25, x20
	mov	x28, x22
	add	x22, sp, #24
LBB0_23:                                ;   in Loop: Header=BB0_14 Depth=1
Ltmp23:
Lloh9:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh10:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh11:
	adrp	x1, l_.str.3@PAGE
Lloh12:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp24:
; %bb.24:                               ;   in Loop: Header=BB0_14 Depth=1
Ltmp25:
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp26:
; %bb.25:                               ;   in Loop: Header=BB0_14 Depth=1
Ltmp27:
	mov	x1, x26
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp28:
; %bb.26:                               ;   in Loop: Header=BB0_14 Depth=1
Ltmp29:
	mov.16b	v0, v8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp30:
; %bb.27:                               ;   in Loop: Header=BB0_14 Depth=1
Ltmp31:
	mov	x1, x27
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp32:
; %bb.28:                               ;   in Loop: Header=BB0_14 Depth=1
	add	w21, w21, #1
	cmp	w28, w21
	b.ne	LBB0_14
; %bb.29:
	subs	x22, x24, x25
	ldr	w26, [sp, #16]                  ; 4-byte Folded Reload
	b.eq	LBB0_34
; %bb.30:
	tbnz	x22, #63, LBB0_88
; %bb.31:
Ltmp34:
	mov	x0, x22
	bl	__Znwm
Ltmp35:
; %bb.32:
	mov	x21, x0
	add	x20, x0, x22
	mov	x1, x25
	mov	x2, x22
	bl	_memcpy
	mov	w23, #0                         ; =0x0
	lsr	x8, x22, #3
	ucvtf	d10, x8
	b	LBB0_35
LBB0_33:
	mov	x25, #0                         ; =0x0
	mov	x24, #0                         ; =0x0
LBB0_34:
	mov	x21, #0                         ; =0x0
	mov	x20, #0                         ; =0x0
	mov	w23, #1                         ; =0x1
LBB0_35:
Ltmp42:
	add	x2, sp, #47
	mov	x0, x21
	mov	x1, x20
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp43:
; %bb.36:
	movi.2d	v11, #0000000000000000
	tbnz	w23, #0, LBB0_42
; %bb.37:
	sub	x8, x24, x25
	sub	x9, x8, #8
	mov	x8, x25
	cmp	x9, #24
	b.lo	LBB0_41
; %bb.38:
	lsr	x8, x9, #3
	add	x9, x8, #1
	and	x10, x9, #0x3ffffffffffffffc
	add	x8, x25, x10, lsl #3
	add	x11, x25, #16
	mov	x12, x10
LBB0_39:                                ; =>This Inner Loop Header: Depth=1
	ldp	d0, d1, [x11, #-16]
	ldp	d2, d3, [x11], #32
	fadd	d0, d11, d0
	fadd	d0, d0, d1
	fadd	d0, d0, d2
	fadd	d11, d0, d3
	subs	x12, x12, #4
	b.ne	LBB0_39
; %bb.40:
	cmp	x9, x10
	b.eq	LBB0_42
LBB0_41:                                ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x8], #8
	fadd	d11, d11, d0
	cmp	x8, x24
	b.ne	LBB0_41
LBB0_42:
Lloh13:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh14:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	sub	x10, x20, x21
	asr	x8, x10, #3
	asr	x9, x10, #4
	add	x9, x21, x9, lsl #3
	tbnz	w10, #3, LBB0_44
; %bb.43:
	ldp	d0, d1, [x9, #-8]
	fadd	d0, d0, d1
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	b	LBB0_45
LBB0_44:
	ldr	d0, [x9]
LBB0_45:
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x8, x8, #1
	ucvtf	d0, x8
	fmov	d1, #0.75000000
	fmul	d12, d0, d1
	fcvtmu	x9, d12
	add	x10, x9, #1
	cmp	x8, x10
	csinc	x10, x8, x9, lo
	ldr	d14, [x21, x9, lsl #3]
	ldr	d0, [x21, x10, lsl #3]
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ucvtf	d13, x8, #2
	fcvtmu	x9, d13
	add	x10, x9, #1
	cmp	x8, x10
	csinc	x8, x8, x9, lo
	ldr	d15, [x21, x9, lsl #3]
	ldr	d8, [x21, x8, lsl #3]
	ldr	d9, [x21]
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
Ltmp45:
Lloh15:
	adrp	x1, l_.str.6@PAGE
Lloh16:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp46:
; %bb.46:
Ltmp47:
	mov	x1, x26
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp48:
; %bb.47:
Ltmp49:
Lloh17:
	adrp	x1, l_.str.7@PAGE
Lloh18:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp50:
; %bb.48:
Ltmp51:
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp52:
; %bb.49:
Ltmp53:
Lloh19:
	adrp	x1, l_.str.2@PAGE
Lloh20:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp54:
; %bb.50:
Ltmp55:
Lloh21:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh22:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh23:
	adrp	x1, l_.str.8@PAGE
Lloh24:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #34                         ; =0x22
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp56:
; %bb.51:
Ltmp57:
Lloh25:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh26:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh27:
	adrp	x1, l_.str.9@PAGE
Lloh28:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp58:
; %bb.52:
Ltmp59:
	mov.16b	v0, v9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp60:
; %bb.53:
Ltmp61:
Lloh29:
	adrp	x1, l_.str.10@PAGE
Lloh30:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp62:
; %bb.54:
Ltmp63:
	fdiv	d10, d11, d10
	mov.16b	v0, v10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp64:
; %bb.55:
Ltmp65:
Lloh31:
	adrp	x1, l_.str.10@PAGE
Lloh32:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp66:
; %bb.56:
Ltmp67:
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp68:
; %bb.57:
Ltmp69:
Lloh33:
	adrp	x1, l_.str.10@PAGE
Lloh34:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp70:
; %bb.58:
Ltmp71:
	frintm	d0, d12
	fcvtzu	d0, d0
	ucvtf	d0, d0
	fsub	d0, d12, d0
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	fsub	d1, d1, d14
	fmadd	d0, d0, d1, d14
	frintm	d1, d13
	fcvtzu	d1, d1
	ucvtf	d1, d1
	fsub	d1, d13, d1
	fsub	d2, d8, d15
	fmadd	d1, d1, d2, d15
	fsub	d11, d0, d1
	mov.16b	v0, v11
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp72:
; %bb.59:
Ltmp73:
Lloh35:
	adrp	x1, l_.str.11@PAGE
Lloh36:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp74:
; %bb.60:
Ltmp75:
Lloh37:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh38:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh39:
	adrp	x1, l_.str.12@PAGE
Lloh40:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp76:
; %bb.61:
	tbnz	w23, #0, LBB0_66
; %bb.62:
Lloh41:
	adrp	x22, __ZNSt3__14coutE@GOTPAGE
Lloh42:
	ldr	x22, [x22, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh43:
	adrp	x23, l_.str.9@PAGE
Lloh44:
	add	x23, x23, l_.str.9@PAGEOFF
	mov	x20, x25
LBB0_63:                                ; =>This Inner Loop Header: Depth=1
	ldr	d12, [x20], #8
Ltmp77:
	mov	x0, x22
	mov	x1, x23
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.64:                               ;   in Loop: Header=BB0_63 Depth=1
Ltmp79:
	mov.16b	v0, v12
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp80:
; %bb.65:                               ;   in Loop: Header=BB0_63 Depth=1
	cmp	x20, x24
	b.ne	LBB0_63
LBB0_66:
Ltmp82:
Lloh45:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh46:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh47:
	adrp	x1, l_.str.2@PAGE
Lloh48:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp83:
; %bb.67:
Ltmp84:
Lloh49:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh50:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh51:
	adrp	x1, l_.str.13@PAGE
Lloh52:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp85:
; %bb.68:
Ltmp86:
	mov.16b	v0, v9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp87:
; %bb.69:
Ltmp88:
Lloh53:
	adrp	x1, l_.str.14@PAGE
Lloh54:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp89:
; %bb.70:
Ltmp90:
	mov.16b	v0, v10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp91:
; %bb.71:
Ltmp92:
Lloh55:
	adrp	x1, l_.str.15@PAGE
Lloh56:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp93:
; %bb.72:
Ltmp94:
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp95:
; %bb.73:
Ltmp96:
Lloh57:
	adrp	x1, l_.str.16@PAGE
Lloh58:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #5                          ; =0x5
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp97:
; %bb.74:
Ltmp98:
	mov.16b	v0, v11
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp99:
; %bb.75:
Ltmp100:
Lloh59:
	adrp	x1, l_.str.2@PAGE
Lloh60:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp101:
; %bb.76:
	mov	x0, x21
	bl	__ZdlPv
	mov	w21, #0                         ; =0x0
	b	LBB0_80
LBB0_77:
Ltmp8:
Lloh61:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh62:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh63:
	adrp	x1, l_.str.1@PAGE
Lloh64:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #30                         ; =0x1e
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp9:
; %bb.78:
Ltmp10:
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp11:
; %bb.79:
	mov	w21, #1                         ; =0x1
Ltmp12:
Lloh65:
	adrp	x1, l_.str.2@PAGE
Lloh66:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp13:
LBB0_80:
	cbz	x25, LBB0_82
; %bb.81:
	mov	x0, x25
	bl	__ZdlPv
LBB0_82:
Lloh67:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh68:
	ldr	x20, [x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [sp, #48]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	add	x22, sp, #48
	str	x9, [x22, x8]
	add	x0, x22, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #48
	add	x1, x20, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x22, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	bl	__ZdlPv
	ldur	x8, [x29, #-160]
Lloh69:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh70:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh71:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_86
; %bb.83:
	mov	x0, x21
	add	sp, sp, #640
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
LBB0_84:
Ltmp20:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
Ltmp21:
	b	LBB0_89
LBB0_85:
Ltmp18:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
Ltmp19:
	b	LBB0_89
LBB0_86:
	bl	___stack_chk_fail
LBB0_87:
Ltmp39:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
Ltmp40:
	b	LBB0_89
LBB0_88:
Ltmp36:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
Ltmp37:
LBB0_89:
	brk	#0x1
LBB0_90:
Ltmp38:
	b	LBB0_104
LBB0_91:
Ltmp44:
	b	LBB0_101
LBB0_92:
Ltmp14:
	b	LBB0_104
LBB0_93:
Ltmp5:
	b	LBB0_96
LBB0_94:
Ltmp2:
	mov	x22, x0
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x22
	bl	__Unwind_Resume
LBB0_95:
Ltmp41:
LBB0_96:
	mov	x22, x0
	add	x0, sp, #48
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x22
	bl	__Unwind_Resume
LBB0_97:
Ltmp17:
	b	LBB0_104
LBB0_98:
Ltmp22:
	b	LBB0_104
LBB0_99:
Ltmp102:
	b	LBB0_101
LBB0_100:
Ltmp81:
LBB0_101:
	mov	x22, x0
	cbz	x21, LBB0_105
; %bb.102:
	mov	x0, x21
	bl	__ZdlPv
	b	LBB0_105
LBB0_103:
Ltmp33:
LBB0_104:
	mov	x22, x0
LBB0_105:
	cbz	x25, LBB0_107
; %bb.106:
	mov	x0, x25
	bl	__ZdlPv
LBB0_107:
	add	x0, sp, #48
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x22
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpLdrGot	Lloh37, Lloh38
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGot	Lloh41, Lloh42
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh45, Lloh46
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpLdrGot	Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh61, Lloh62
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpLdrGotLdr	Lloh69, Lloh70, Lloh71
	.loh AdrpLdrGot	Lloh67, Lloh68
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
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp23-Ltmp16                  ;   Call between Ltmp16 and Ltmp23
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp32-Ltmp23                  ;   Call between Ltmp23 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin0            ;     jumps to Ltmp33
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp35-Ltmp34                  ;   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp42-Ltmp35                  ;   Call between Ltmp35 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp43-Ltmp42                  ;   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin0            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp76-Ltmp45                  ;   Call between Ltmp45 and Ltmp76
	.uleb128 Ltmp102-Lfunc_begin0           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp80-Ltmp77                  ;   Call between Ltmp77 and Ltmp80
	.uleb128 Ltmp81-Lfunc_begin0            ;     jumps to Ltmp81
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp82-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp101-Ltmp82                 ;   Call between Ltmp82 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin0           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 14 <<
	.uleb128 Ltmp13-Ltmp8                   ;   Call between Ltmp8 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp19-Ltmp20                  ;   Call between Ltmp20 and Ltmp19
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp39-Ltmp19                  ;   Call between Ltmp19 and Ltmp39
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp40-Ltmp39                  ;   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin0            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Lfunc_end0-Ltmp37              ;   Call between Ltmp37 and Lfunc_end0
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
Lloh72:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh73:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh74:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh75:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp103:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp104:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp106:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp107:
; %bb.2:
Ltmp109:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp110:
; %bb.3:
	cbnz	x0, LBB1_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp111:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp112:
LBB1_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_6:
Ltmp108:
	mov	x20, x0
	b	LBB1_9
LBB1_7:
Ltmp105:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB1_8:
Ltmp113:
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
	.loh AdrpLdrGot	Lloh74, Lloh75
	.loh AdrpLdrGot	Lloh72, Lloh73
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
	.uleb128 Ltmp103-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin1           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin1           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp112-Ltmp109                ;   Call between Ltmp109 and Ltmp112
	.uleb128 Ltmp113-Lfunc_begin1           ;     jumps to Ltmp113
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp112             ;   Call between Ltmp112 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL6kernelPKfm
__ZL6kernelPKfm:                        ; @_ZL6kernelPKfm
	.cfi_startproc
; %bb.0:
	add	x8, x0, #32
	movi.2d	v0, #0000000000000000
	mov	w9, #57600                      ; =0xe100
	movk	w9, #1525, lsl #16
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x8, #-32]
	ldp	q3, q4, [x8], #64
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
	subs	x9, x9, #16
	b.ne	LBB2_1
; %bb.2:
	ret
	.cfi_endproc
                                        ; -- End function
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
Lloh76:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh77:
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
	.loh AdrpLdrGot	Lloh76, Lloh77
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
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe210106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe210106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe210106EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
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
Ltmp114:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp115:
; %bb.1:
Lloh78:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh79:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh80:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh81:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB5_2:
Ltmp116:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh80, Lloh81
	.loh AdrpLdrGot	Lloh78, Lloh79
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp114-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp114
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp115-Ltmp114                ;   Call between Ltmp114 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin2           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp115             ;   Call between Ltmp115 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh82:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh83:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh82, Lloh83
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB9nqe210106v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.globl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB9nqe210106v: ; @_ZSt28__throw_bad_array_new_lengthB9nqe210106v
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
Lloh84:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh85:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh86:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh87:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh86, Lloh87
	.loh AdrpLdrGot	Lloh84, Lloh85
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh88:
	adrp	x0, l_.str.17@PAGE
Lloh89:
	add	x0, x0, l_.str.17@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh88, Lloh89
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
Ltmp117:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp118:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB9_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB9_7
; %bb.3:
Ltmp120:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp121:
; %bb.4:
Ltmp122:
Lloh90:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh91:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp123:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp124:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp125:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB9_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp127:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp128:
; %bb.8:
	cbnz	x0, LBB9_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp130:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp131:
LBB9_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB9_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB9_12:
Ltmp132:
	b	LBB9_15
LBB9_13:
Ltmp126:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB9_16
LBB9_14:
Ltmp129:
LBB9_15:
	mov	x20, x0
LBB9_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB9_18
LBB9_17:
Ltmp119:
	mov	x20, x0
LBB9_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp133:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp134:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB9_11
LBB9_20:
Ltmp135:
	mov	x19, x0
Ltmp136:
	bl	___cxa_end_catch
Ltmp137:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_22:
Ltmp138:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh90, Lloh91
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp117-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp118-Ltmp117                ;   Call between Ltmp117 and Ltmp118
	.uleb128 Ltmp119-Lfunc_begin3           ;     jumps to Ltmp119
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp120-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp121-Ltmp120                ;   Call between Ltmp120 and Ltmp121
	.uleb128 Ltmp129-Lfunc_begin3           ;     jumps to Ltmp129
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp122-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp125-Ltmp122                ;   Call between Ltmp122 and Ltmp125
	.uleb128 Ltmp126-Lfunc_begin3           ;     jumps to Ltmp126
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp127-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp128-Ltmp127                ;   Call between Ltmp127 and Ltmp128
	.uleb128 Ltmp129-Lfunc_begin3           ;     jumps to Ltmp129
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp130-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp131-Ltmp130                ;   Call between Ltmp130 and Ltmp131
	.uleb128 Ltmp132-Lfunc_begin3           ;     jumps to Ltmp132
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp131-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp133-Ltmp131                ;   Call between Ltmp131 and Ltmp133
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Ltmp134-Ltmp133                ;   Call between Ltmp133 and Ltmp134
	.uleb128 Ltmp135-Lfunc_begin3           ;     jumps to Ltmp135
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin3           ; >> Call Site 8 <<
	.uleb128 Ltmp136-Ltmp134                ;   Call between Ltmp134 and Ltmp136
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp136-Lfunc_begin3           ; >> Call Site 9 <<
	.uleb128 Ltmp137-Ltmp136                ;   Call between Ltmp136 and Ltmp137
	.uleb128 Ltmp138-Lfunc_begin3           ;     jumps to Ltmp138
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp137-Lfunc_begin3           ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp137             ;   Call between Ltmp137 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
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
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
	cbz	x0, LBB10_16
; %bb.1:
	mov	x23, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	mov	x24, x1
	ldr	x26, [x4, #24]
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB10_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x24
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB10_15
LBB10_3:
	sub	x8, x22, x24
	cmp	x26, x8
	b.le	LBB10_12
; %bb.4:
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x24, x26, x8
	cmp	x24, x9
	b.hs	LBB10_17
; %bb.5:
	cmp	x24, #23
	b.hs	LBB10_7
; %bb.6:
	strb	w24, [sp, #31]
	add	x25, sp, #8
	b	LBB10_8
LBB10_7:
	orr	x8, x24, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x24, x8, [sp, #16]
	str	x0, [sp, #8]
LBB10_8:
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
Ltmp139:
	mov	x0, x19
	mov	x2, x24
	blr	x8
Ltmp140:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB10_11
; %bb.10:
	cmp	x0, x24
	b.ne	LBB10_15
	b	LBB10_12
LBB10_11:
	ldr	x8, [sp, #8]
	mov	x23, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x23, x24
	b.ne	LBB10_15
LBB10_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB10_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB10_15
LBB10_14:
	str	xzr, [x20, #24]
	b	LBB10_16
LBB10_15:
	mov	x19, #0                         ; =0x0
LBB10_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB10_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
LBB10_18:
Ltmp141:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB10_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB10_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp139-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp139
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp139-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp140-Ltmp139                ;   Call between Ltmp139 and Ltmp140
	.uleb128 Ltmp141-Lfunc_begin4           ;     jumps to Ltmp141
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp140-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp140             ;   Call between Ltmp140 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh92:
	adrp	x0, l_.str.18@PAGE
Lloh93:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh92, Lloh93
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

l_.str.18:                              ; @.str.18
	.asciz	"basic_string"

.subsections_via_symbols
