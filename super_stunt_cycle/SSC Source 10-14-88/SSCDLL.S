;@A D	 *4>HR\+p
; Z-1________ -0

	.subttl "SSCDLL.S:  Display List Lists"
; Z-1________ -0

;*___________ Display List List 1  __________

; This is approx. one page of DLL.  Two pages = max. allowable.


;"display" dli,h16,h8,(zone size),address:

DLL0:	 	; blank screen with no DLIs
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky
	display 0,0,0,15,sky

DLL1:			   ;VIS: SCAN:   DL:
    display 1,0,0,15,sky	   ;_i___$00-$0F  0 | off-screen	*dli 0
    display 0,0,0,15,sky	   ;_i___$10-$1F  1 |
	display 0,0,0,15,clouds
    display 0,0,0,15,mountains  ; v   $20-$2F  2 | Horizon		
    display 1,0,0,7,field	   ; v   $30-$3F  3 |Background	*dli 1
    display 1,0,0,10,field	   ; v   $40-$4F  4 |To be algorithmic  *dli 2

* Dynamic DLL area.  %10000001 for DLI and %00000001 no DLI, HiAddr, LoAddr.

;16 zone #0
	display 1,0,0,0,RAM4		;sc0   *dli 3
	display 0,0,0,0,RAM4+10		;sc1	
	display 0,0,0,0,RAM4+20		;sc2
	display 0,0,0,0,RAM4+30		;sc3
	display 0,0,0,0,RAM4+40		;sc4
	display 0,0,0,0,RAM4+50		;sc5
	display 0,0,0,0,RAM4+60		;sc6
	display 0,0,0,0,RAM4+70		;sc7
	display 0,0,0,0,RAM4+80		;sc8
	display 0,0,0,0,RAM4+90		;sc9
	display 0,0,0,0,RAM4+100		;scA
	display 0,0,0,0,RAM4+110		;scB
	display 0,0,0,0,RAM4+120		;scC
	display 0,0,0,0,RAM4+130		;scD
	display 0,0,0,0,RAM4+140		;scE
	display 0,0,0,0,RAM4+150		;scF
;16 zone #1	       
	display 1,0,0,0,RAM4+160		;sc10	;dli 4
	display 0,0,0,0,RAM4+170		;sc11
	display 0,0,0,0,RAM4+180		;sc12
	display 0,0,0,0,RAM4+190		;sc13
	display 0,0,0,0,RAM4+200		;sc14
	display 0,0,0,0,RAM4+210		;sc15
	display 0,0,0,0,RAM4+220		;sc16
	display 0,0,0,0,RAM4+230		;sc17
	display 0,0,0,0,RAM4+240		;sc18
	display 0,0,0,0,RAM4+250		;sc19
	display 0,0,0,0,RAM4+260		;sc1A
	display 0,0,0,0,RAM4+270		;sc1B
	display 0,0,0,0,RAM4+280		;sc1C
	display 0,0,0,0,RAM4+290		;sc1D
	display 0,0,0,0,RAM4+300		;sc1E
	display 0,0,0,0,RAM4+310		;sc1F
;16 zone #2	       
	display 0,0,0,0,RAM4+320		;sc20
	display 0,0,0,0,RAM4+330		;sc21
	display 0,0,0,0,RAM4+340		;sc22
	display 0,0,0,0,RAM4+350		;sc23
	display 0,0,0,0,RAM4+360		;sc24
	display 0,0,0,0,RAM4+370		;sc25
	display 0,0,0,0,RAM4+380		;sc26
	display 0,0,0,0,RAM4+390		;sc27
	display 0,0,0,0,RAM4+400		;sc28
	display 0,0,0,0,RAM4+410		;sc29
	display 0,0,0,0,RAM4+420		;sc2A
	display 0,0,0,0,RAM4+430		;sc2B
	display 0,0,0,0,RAM4+440		;sc2C
	display 0,0,0,0,RAM4+450		;sc2D
	display 0,0,0,0,RAM4+460		;sc2E
	display 0,0,0,0,RAM4+470		;sc2F
;16 zone #3	       
	display 0,0,0,0,RAM4+480		;sc30
	display 0,0,0,0,RAM4+490		;sc31
	display 0,0,0,0,RAM4+500		;sc32
	display 0,0,0,0,RAM4+510		;sc33
	display 0,0,0,0,RAM4+520		;sc34
	display 0,0,0,0,RAM4+530		;sc35
	display 0,0,0,0,RAM4+540		;sc36
	display 0,0,0,0,RAM4+550		;sc37
	display 0,0,0,0,RAM4+560		;sc38
	display 0,0,0,0,RAM4+570		;sc39
	display 0,0,0,0,RAM4+580		;sc3A
	display 0,0,0,0,RAM4+590		;sc3B
	display 0,0,0,0,RAM4+600		;sc3C
	display 0,0,0,0,RAM4+610		;sc3D
	display 0,0,0,0,RAM4+620		;sc3E
	display 0,0,0,0,RAM4+630		;sc3F
	
    display 1,0,0,3,field	   ; v   $70-$7F  |space above bike	*dli 5
	display 0,0,0,15,bike0	   ; v   $80-$8F  |Foreground
	display 0,0,0,15,bike1	   ; v   $90-$9F  |
	display 0,0,0,15,bike2	   ; v   $A0-$AF  |
	display 0,0,0,15,bike3	   ;_v___$B0-$BF  |
    display 1,0,0,15,alpha1	   ; i   $E0-$EF   |		*dli 6
    display 0,0,0,15,sky	   ; i   $F0-$FF   |


;*___________ Display List List 2 __________

		ds.B DLL1+$200-*	;$4A00 typ.
DLL2:
;3 bytes per sc line * 80 byte effect
;	ds.B %00000000,h1>>8,h1&$FF
;	ds.B %00000000,h2>>8,h1&$FF
;	ds.B %00000000,h3>>8,h1&$FF
;	ds.B %00000000,h4>>8,h1&$FF
;	ds.B %00000000,h5>>8,h1&$FF
;	ds.B %00000000,h6>>8,h1&$FF
;	ds.B %00000000,h7>>8,h1&$FF
;	ds.B %00000000,h8>>8,h1&$FF
;	ds.B %00000000,h9>>8,h1&$FF
;	ds.B %00000000,h10>>8,h1&$FF
	
; Z-1________ -0


                                                                                                                                                          