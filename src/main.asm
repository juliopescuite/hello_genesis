; ------------------------------------------------------------------------------
;
; Copyright 2025 Julio Batista
;
; Initial demo based on the https://namelessalgorithm.com code.
; ------------------------------------------------------------------------------

; ----------------------------------------------------------------------------
; INCLUDES
; ----------------------------------------------------------------------------
  incdir     "include"
  include    "rom_header.asm"
  include    "tmss.asm"
  include    "vdp_constants.asm"
  include    "z80.asm"


; INIT
; ------------------------------------------------------------------------------
EntryPoint:               ; Entry point address set in ROM header
  move       #$2700,sr                 ; disable interrupts



init_vdp
  move.l     #VDPRegisters,a0          ; Load address of register table into a0
  move.l     #$18,d0                   ; 24 registers to write
  move.l     #$00008000,d1             ; 'Set register 0' command
                             ; (and clear the rest of d1 ready)

copy_vdp
  move.b     (a0)+,d1                  ; Move register value to lower byte of d1
  move.w     d1,$00C00004              ; Write command and value to VDP control port
  add.w      #$0100,d1                 ; Increment register #
  dbra       d0,copy_vdp


; MAIN PROGRAM
; ------------------------------------------------------------------------------
main
  move.w     #0,d0
  move.w     #$8F00,vdp_control        ; Set VDP autoincrement to 2 words/write
  move.l     #$C0000003,vdp_control    ; Set up VDP to write to CRAM address $0000
loop
  move.w     d0,vdp_data               ; black (BGR)
  add.w      #1,d0
  move.w     #100,d1
.wait
  dbra       d1,.wait
  jmp        loop



; EXCEPTION AND INTERRUPT HANDLERS
; ----------------------------------------------------------------------------
  align      2                         ; word-align code

ignore_handler
  rte                                  ; return from exception (seems to restore PC)

__end: