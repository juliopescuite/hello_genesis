; ------------------------------------------------------------------------------
;
; Copyright 2025 Julio Batista
;
; ------------------------------------------------------------------------------


; CONSTANTS
; ------------------------------------------------------------------------------
vdp_control = $C00004         ; Memory mapped I/O
vdp_data    = $C00000         ;


; VDP REGISTER INITIALIZATION
; ------------------------------------------------------------------------------
; - Explanations (albeit short explanations) of the VDP registers can be found
;   in chapter 4 of the SEGA2 doc

        align    2            ; word-align code

VDPRegisters:
; Mode
reg00:  dc.b     %00000101    ; MD colors on, display on, hblank off
reg01:  dc.b     %01000100    ; Display on, vblank off, DMA off, NTSC, Genesis mode

; VRAM layout
reg02:  dc.b     $38          ; Pattern table for Scroll Plane A at VRAM $E000
reg03:  dc.b     $00          ; Pattern table for Window Plane   at VRAM $0000
reg04:  dc.b     $07          ; Pattern table for Scroll Plane B at VRAM $E000
reg05:  dc.b     $78          ; Sprite table at VRAM $F000 (bits 0-6 = bits 9-15)
reg06:  dc.b     $00          ; Sprite table 128KB VRAM (ignore)

; BG color
reg07:  dc.b     $00          ; Background colour - bits 0-3 = colour
                        ;                     bits 4-5 = palette

; Unused
reg08:  dc.b     $00          ; SMS HScroll reg
reg09:  dc.b     $00          ; SMS VScroll reg

; General
reg0A:  dc.b     $00          ; hblank counter (# scanlines between hblank)

reg0B:  dc.b     %0000000     ; Ext. interrupts off, HScroll fullscreen
reg0C:  dc.b     %0000000     ; H40 (320px) mode, no external pixel bus, disable
                        ; shadow/highlight mode, no interlace
reg0D:  dc.b     $3F          ; Horiz. scroll table at VRAM $FC00 (bits 0-5)
reg0E:  dc.b     $00          ; Unused
reg0F:  dc.b     $02          ; Autoincrement 2 bytes
reg10:  dc.b     $00          ; Vert. scroll 32, Horiz. scroll 32

; Window
reg11:  dc.b     $00          ; Window Plane X pos 0 left
                        ; (pos in bits 0-4, left/right in bit 7)
reg12:  dc.b     $00          ; Window Plane Y pos 0 up
                        ; (pos in bits 0-4, up/down in bit 7)

; DMA
reg13:  dc.b     $00          ; DMA length lo byte
reg14:  dc.b     $00          ; DMA length hi byte
reg15:  dc.b     $00          ; DMA source address lo byte
reg16:  dc.b     $00          ; DMA source address mid byte
reg17:  dc.b     $80          ; DMA source address hi byte,
                        ; memory-to-VRAM mode (bits 6-7)

