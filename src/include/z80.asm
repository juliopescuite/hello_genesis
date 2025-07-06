; ------------------------------------------------------------------------------
;
; Copyright 2025 Julio Batista
;
;

Z80
  move.w    #$0100,$00A11100    ; Request access to the Z80 bus
  move.w    #$0100,$00A11200    ; Hold the Z80 in a reset state
.wait
  btst      #$0,$00A11101       ; Check if we have access to the Z80 bus yet
  bne       .wait               ; If we don't yet have control,branch back up to Wait
  move.l    #$00A00000,a1       ; Copy Z80 RAM address to a1
  move.l    #$00C30000,(a1)     ; Copy data,and increment the source/dest addresses

  move.w    #$0000,$00A11200    ; Release reset state
  move.w    #$0000,$00A11100    ; Release control of bus

; Initialize PSG to silence
    ;move.l  #$9fbfdfff,$00C00011  ; silence