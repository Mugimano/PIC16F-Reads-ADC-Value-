opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_lcd_init
	FNCALL	_main,_adc_init
	FNCALL	_main,_adc0
	FNCALL	_main,_command
	FNCALL	_main,_lcd_send
	FNCALL	_main,_hex_dec1
	FNCALL	_hex_dec1,___lwdiv
	FNCALL	_hex_dec1,___lwmod
	FNCALL	_hex_dec1,_lcd_data
	FNCALL	_lcd_send,_lcd_data
	FNCALL	_lcd_init,_command
	FNROOT	_main
	global	_a
	global	_h
	global	_o
	global	_t
	global	_th
	global	_thr
	global	_val
	global	_b
	global	_hr
	global	_ADCON0
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_ADGO
_ADGO	set	250
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"adc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_b:
       ds      2

_hr:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_h:
       ds      2

_o:
       ds      2

_t:
       ds      2

_th:
       ds      2

_thr:
       ds      2

_val:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_adc_init
?_adc_init:	; 0 bytes @ 0x0
	global	??_adc_init
??_adc_init:	; 0 bytes @ 0x0
	global	?_adc0
?_adc0:	; 0 bytes @ 0x0
	global	??_adc0
??_adc0:	; 0 bytes @ 0x0
	global	?_command
?_command:	; 0 bytes @ 0x0
	global	??_command
??_command:	; 0 bytes @ 0x0
	global	?_lcd_send
?_lcd_send:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	command@com
command@com:	; 1 bytes @ 0x2
	global	lcd_data@Data
lcd_data@Data:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	??_lcd_send
??_lcd_send:	; 0 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	lcd_send@word
lcd_send@word:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_hex_dec1
?_hex_dec1:	; 0 bytes @ 0x8
	global	hex_dec1@val
hex_dec1@val:	; 2 bytes @ 0x8
	ds	2
	global	??_hex_dec1
??_hex_dec1:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
;;Data sizes: Strings 12, constant 0, data 0, bss 18, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; lcd_send@word	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_hex_dec1
;;   _hex_dec1->___lwdiv
;;   _lcd_send->_lcd_data
;;   _lcd_init->_command
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     498
;;                           _lcd_init
;;                           _adc_init
;;                               _adc0
;;                            _command
;;                           _lcd_send
;;                           _hex_dec1
;; ---------------------------------------------------------------------------------
;; (1) _hex_dec1                                             2     0      2     387
;;                                              8 COMMON     2     0      2
;;                            ___lwdiv
;;                            ___lwmod
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_send                                             3     3      0      67
;;                                              3 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      22
;;                            _command
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _adc0                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _adc_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _command
;;   _adc_init
;;   _adc0
;;   _command
;;   _lcd_send
;;     _lcd_data
;;   _hex_dec1
;;     ___lwdiv
;;     ___lwmod
;;     _lcd_data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       E       5       17.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_init
;;		_adc_init
;;		_adc0
;;		_command
;;		_lcd_send
;;		_hex_dec1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l2038:	
;main.c: 23: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	24
	
l2040:	
;main.c: 24: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	26
	
l2042:	
;main.c: 26: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	27
	
l2044:	
;main.c: 27: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	28
	
l2046:	
;main.c: 28: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	29
	
l2048:	
;main.c: 29: PORTD = 0x00;
	clrf	(8)	;volatile
	line	31
	
l2050:	
;main.c: 31: lcd_init();
	fcall	_lcd_init
	line	32
	
l2052:	
;main.c: 32: adc_init();
	fcall	_adc_init
	goto	l2054
	line	33
;main.c: 33: while(1)
	
l593:	
	line	35
	
l2054:	
;main.c: 34: {
;main.c: 35: adc0();
	fcall	_adc0
	line	36
	
l2056:	
;main.c: 36: command(0x84);
	movlw	(084h)
	fcall	_command
	line	37
	
l2058:	
;main.c: 37: lcd_send("ADC Value: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_send
	line	38
	
l2060:	
;main.c: 38: command(0xc8);
	movlw	(0C8h)
	fcall	_command
	line	39
	
l2062:	
;main.c: 39: hex_dec1(val);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_val+1),w
	clrf	(?_hex_dec1+1)
	addwf	(?_hex_dec1+1)
	movf	(_val),w
	clrf	(?_hex_dec1)
	addwf	(?_hex_dec1)

	fcall	_hex_dec1
	goto	l2054
	line	40
	
l594:	
	line	33
	goto	l2054
	
l595:	
	line	41
	
l596:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_hex_dec1
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:

;; *************** function _hex_dec1 *****************
;; Defined at:
;;		line 95 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;  val             2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text215
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	95
	global	__size_of_hex_dec1
	__size_of_hex_dec1	equ	__end_of_hex_dec1-_hex_dec1
	
_hex_dec1:	
	opt	stack 6
; Regs used in _hex_dec1: [wreg+status,2+status,0+pclath+cstack]
	line	96
	
l2036:	
;main.c: 96: h=val/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(hex_dec1@val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(hex_dec1@val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_h+1)
	addwf	(_h+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_h)
	addwf	(_h)

	line	97
;main.c: 97: hr=val%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(hex_dec1@val+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(hex_dec1@val),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(_hr+1)
	addwf	(_hr+1)
	movf	(0+(?___lwmod)),w
	clrf	(_hr)
	addwf	(_hr)

	line	98
;main.c: 98: t=hr/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_hr+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_hr),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_t+1)
	addwf	(_t+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_t)
	addwf	(_t)

	line	99
;main.c: 99: o=hr%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_hr+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_hr),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_o+1)
	addwf	(_o+1)
	movf	(0+(?___lwmod)),w
	clrf	(_o)
	addwf	(_o)

	line	100
;main.c: 100: th=o/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_o+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_o),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_th+1)
	addwf	(_th+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_th)
	addwf	(_th)

	line	101
;main.c: 101: thr=o%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_o+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_o),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_thr+1)
	addwf	(_thr+1)
	movf	(0+(?___lwmod)),w
	clrf	(_thr)
	addwf	(_thr)

	line	102
;main.c: 102: lcd_data(h+0x30);
	movf	(_h),w
	addlw	030h
	fcall	_lcd_data
	line	103
;main.c: 103: lcd_data(t+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_t),w
	addlw	030h
	fcall	_lcd_data
	line	104
;main.c: 104: lcd_data(th+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_th),w
	addlw	030h
	fcall	_lcd_data
	line	105
;main.c: 105: lcd_data(thr+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_thr),w
	addlw	030h
	fcall	_lcd_data
	line	106
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of_hex_dec1
	__end_of_hex_dec1:
;; =============== function _hex_dec1 ends ============

	signat	_hex_dec1,4216
	global	_lcd_send
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 77 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;  word            1    wreg     PTR const unsigned char 
;;		 -> STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(12), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text216
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	77
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
	opt	stack 6
; Regs used in _lcd_send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_send@word stored from wreg
	movwf	(lcd_send@word)
	line	78
	
l2026:	
;main.c: 78: while(*word)
	goto	l2034
	
l615:	
	line	80
	
l2028:	
;main.c: 79: {
;main.c: 80: lcd_data(*word++);
	movf	(lcd_send@word),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	
l2030:	
	movlw	(01h)
	movwf	(??_lcd_send+0)+0
	movf	(??_lcd_send+0)+0,w
	addwf	(lcd_send@word),f
	line	81
	
l2032:	
;main.c: 81: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_lcd_send+0)+0+1),f
	movlw	238
movwf	((??_lcd_send+0)+0),f
u2337:
	decfsz	((??_lcd_send+0)+0),f
	goto	u2337
	decfsz	((??_lcd_send+0)+0+1),f
	goto	u2337
	clrwdt
opt asmopt_on

	goto	l2034
	line	82
	
l614:	
	line	78
	
l2034:	
	movf	(lcd_send@word),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2028
u2320:
	goto	l617
	
l616:	
	line	83
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
;; =============== function _lcd_send ends ============

	signat	_lcd_send,4216
	global	_lcd_init
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 44 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text217
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	44
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l2024:	
;main.c: 45: command(0x01);
	movlw	(01h)
	fcall	_command
	line	46
;main.c: 46: command(0x06);
	movlw	(06h)
	fcall	_command
	line	47
;main.c: 47: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	48
;main.c: 48: command(0x38);
	movlw	(038h)
	fcall	_command
	line	49
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 86 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_hex_dec1
;; This function uses a non-reentrant model
;;
psect	text218
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	86
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg]
;lcd_data@Data stored from wreg
	movwf	(lcd_data@Data)
	line	87
	
l2016:	
;main.c: 87: PORTD=Data;
	movf	(lcd_data@Data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	88
	
l2018:	
;main.c: 88: RB4 = 1;
	bsf	(52/8),(52)&7
	line	89
	
l2020:	
;main.c: 89: RB5 = 1;
	bsf	(53/8),(53)&7
	line	90
;main.c: 90: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_lcd_data+0)+0+1),f
	movlw	238
movwf	((??_lcd_data+0)+0),f
u2347:
	decfsz	((??_lcd_data+0)+0),f
	goto	u2347
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u2347
	clrwdt
opt asmopt_on

	line	91
	
l2022:	
;main.c: 91: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	92
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_command
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _command *****************
;; Defined at:
;;		line 68 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text219
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	68
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@com stored from wreg
	movwf	(command@com)
	line	69
	
l2008:	
;main.c: 69: PORTD=com;
	movf	(command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	70
	
l2010:	
;main.c: 70: RB4 = 0;
	bcf	(52/8),(52)&7
	line	71
	
l2012:	
;main.c: 71: RB5 = 1;
	bsf	(53/8),(53)&7
	line	72
;main.c: 72: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_command+0)+0+1),f
	movlw	238
movwf	((??_command+0)+0),f
u2357:
	decfsz	((??_command+0)+0),f
	goto	u2357
	decfsz	((??_command+0)+0+1),f
	goto	u2357
	clrwdt
opt asmopt_on

	line	73
	
l2014:	
;main.c: 73: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	74
	
l611:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
	global	_adc0
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _adc0 *****************
;; Defined at:
;;		line 57 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text220
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	57
	global	__size_of_adc0
	__size_of_adc0	equ	__end_of_adc0-_adc0
	
_adc0:	
	opt	stack 7
; Regs used in _adc0: [wreg+status,2+status,0+btemp+1]
	line	58
	
l2000:	
;main.c: 58: ADCON0=0XC5;
	movlw	(0C5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	59
;main.c: 59: while(ADGO);
	goto	l605
	
l606:	
	
l605:	
	btfsc	(250/8),(250)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l605
u2300:
	goto	l2002
	
l607:	
	line	60
	
l2002:	
;main.c: 60: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_adc0+0)+0+1),f
	movlw	238
movwf	((??_adc0+0)+0),f
u2367:
	decfsz	((??_adc0+0)+0),f
	goto	u2367
	decfsz	((??_adc0+0)+0+1),f
	goto	u2367
	clrwdt
opt asmopt_on

	line	61
;main.c: 61: a=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc0+0)+0
	clrf	(??_adc0+0)+0+1
	movf	0+(??_adc0+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_a)
	movf	1+(??_adc0+0)+0,w
	movwf	(_a+1)
	line	62
;main.c: 62: b=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_adc0+0)+0
	clrf	(??_adc0+0)+0+1
	movf	0+(??_adc0+0)+0,w
	movwf	(_b)
	movf	1+(??_adc0+0)+0,w
	movwf	(_b+1)
	line	63
	
l2004:	
;main.c: 63: b=b*256;
	movf	(_b+1),w
	movwf	(??_adc0+0)+0+1
	movf	(_b),w
	movwf	(??_adc0+0)+0
	movlw	08h
	movwf	btemp+1
u2315:
	clrc
	rlf	(??_adc0+0)+0,f
	rlf	(??_adc0+0)+1,f
	decfsz	btemp+1,f
	goto	u2315
	movf	0+(??_adc0+0)+0,w
	movwf	(_b)
	movf	1+(??_adc0+0)+0,w
	movwf	(_b+1)
	line	64
	
l2006:	
;main.c: 64: val=(b+a);
	movf	(_a),w
	addwf	(_b),w
	movwf	(_val)
	movf	(_a+1),w
	skipnc
	incf	(_a+1),w
	addwf	(_b+1),w
	movwf	1+(_val)
	line	65
	
l608:	
	return
	opt stack 0
GLOBAL	__end_of_adc0
	__end_of_adc0:
;; =============== function _adc0 ends ============

	signat	_adc0,88
	global	___lwmod
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hex_dec1
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l1978:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l1996
u2240:
	line	9
	
l1980:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l1986
	
l650:	
	line	11
	
l1982:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2255
	line	12
	
l1984:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1986
	line	13
	
l649:	
	line	10
	
l1986:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l1982
u2260:
	goto	l1988
	
l651:	
	goto	l1988
	line	14
	
l652:	
	line	15
	
l1988:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2275
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1992
u2270:
	line	16
	
l1990:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1992
	
l653:	
	line	17
	
l1992:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	18
	
l1994:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l1988
u2290:
	goto	l1996
	
l654:	
	goto	l1996
	line	19
	
l648:	
	line	20
	
l1996:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l655
	
l1998:	
	line	21
	
l655:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hex_dec1
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l1954:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2171
	goto	u2170
u2171:
	goto	l1974
u2170:
	line	11
	
l1956:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l1962
	
l640:	
	line	13
	
l1958:	
	movlw	01h
	
u2185:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2185
	line	14
	
l1960:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1962
	line	15
	
l639:	
	line	12
	
l1962:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1958
u2190:
	goto	l1964
	
l641:	
	goto	l1964
	line	16
	
l642:	
	line	17
	
l1964:	
	movlw	01h
	
u2205:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2205
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2215
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2215:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l1970
u2210:
	line	19
	
l1966:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l1968:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1970
	line	21
	
l643:	
	line	22
	
l1970:	
	movlw	01h
	
u2225:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	
l1972:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l1964
u2230:
	goto	l1974
	
l644:	
	goto	l1974
	line	24
	
l638:	
	line	25
	
l1974:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l645
	
l1976:	
	line	26
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_adc_init
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _adc_init *****************
;; Defined at:
;;		line 52 in file "C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text223
	file	"C:\Users\HP\Desktop\Embedded_Batch-2\PIC_Programs\3. ADC_LCD\main.c"
	line	52
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 7
; Regs used in _adc_init: [wreg]
	line	53
	
l1952:	
;main.c: 53: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	54
	
l602:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
