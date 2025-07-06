; ------------------------------------------------------------------------------
;
; Copyright 2025 Julio Batista
;
; ------------------------------------------------------------------------------


; Skip clear RAM - we don't use RAM at all in this example
TMSS
  move.b    $00A10001,d0         ; Move Megadrive hardware version to d0
  andi.b    #$0F,d0              ; The version is stored in last four bits,
                              ; so mask it with 0F
  beq       .skip                ; If version is equal to 0,skip TMSS signature
  move.l    #'SEGA',$00A14000    ; Move the string "SEGA" to $A14000
.skip