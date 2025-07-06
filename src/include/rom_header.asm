; ------------------------------------------------------------------------------
;
; Copyright 2025 Julio Batista
;
; ------------------------------------------------------------------------------


; ROM HEADER
; ------------------------------------------------------------------------------
rom_header:
  dc.l    $00FFFFFE                                               ; Initial stack pointer value
  dc.l    EntryPoint                                              ; Start of program
  dc.l    ignore_handler                                          ; Bus error
  dc.l    ignore_handler                                          ; Address error
  dc.l    ignore_handler                                          ; Illegal instruction
  dc.l    ignore_handler                                          ; Division by zero
  dc.l    ignore_handler                                          ; CHK exception
  dc.l    ignore_handler                                          ; TRAPV exception
  dc.l    ignore_handler                                          ; Privilege violation
  dc.l    ignore_handler                                          ; TRACE exception
  dc.l    ignore_handler                                          ; Line-A emulator
  dc.l    ignore_handler                                          ; Line-F emulator
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Spurious exception
  dc.l    ignore_handler                                          ; IRQ level 1
  dc.l    ignore_handler                                          ; IRQ level 2
  dc.l    ignore_handler                                          ; IRQ level 3
  dc.l    ignore_handler                                          ; IRQ level 4 (horizontal retrace interrupt)
  dc.l    ignore_handler                                          ; IRQ level 5
  dc.l    ignore_handler                                          ; IRQ level 6 (vertical retrace interrupt)
  dc.l    ignore_handler                                          ; IRQ level 7
  dc.l    ignore_handler                                          ; TRAP #00 exception
  dc.l    ignore_handler                                          ; TRAP #01 exception
  dc.l    ignore_handler                                          ; TRAP #02 exception
  dc.l    ignore_handler                                          ; TRAP #03 exception
  dc.l    ignore_handler                                          ; TRAP #04 exception
  dc.l    ignore_handler                                          ; TRAP #05 exception
  dc.l    ignore_handler                                          ; TRAP #06 exception
  dc.l    ignore_handler                                          ; TRAP #07 exception
  dc.l    ignore_handler                                          ; TRAP #08 exception
  dc.l    ignore_handler                                          ; TRAP #09 exception
  dc.l    ignore_handler                                          ; TRAP #10 exception
  dc.l    ignore_handler                                          ; TRAP #11 exception
  dc.l    ignore_handler                                          ; TRAP #12 exception
  dc.l    ignore_handler                                          ; TRAP #13 exception
  dc.l    ignore_handler                                          ; TRAP #14 exception
  dc.l    ignore_handler                                          ; TRAP #15 exception
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)
  dc.l    ignore_handler                                          ; Unused (reserved)

  dc.b    "SEGA GENESIS    "                                      ; Console name
  dc.b    "(C) NAMELESS    "                                      ; Copyright holder and release date
  dc.b    "DEMO BY JULIO BATISTA                             "    ; Domest. name
  dc.b    "DEMO BY JULIO BATISTA                             "    ; Intern. name
  dc.b    "2022-08-04    "                                        ; Version number
  dc.w    $0000                                                   ; Checksum
  dc.b    "J               "                                      ; I/O support
  dc.l    $00000000                                               ; Start address of ROM
  dc.l    __end                                                   ; End address of ROM
  dc.l    $00FF0000                                               ; Start address of RAM
  dc.l    $00FFFFFF                                               ; End address of RAM
  dc.l    $00000000                                               ; SRAM enabled
  dc.l    $00000000                                               ; Unused
  dc.l    $00000000                                               ; Start address of SRAM
  dc.l    $00000000                                               ; End address of SRAM
  dc.l    $00000000                                               ; Unused
  dc.l    $00000000                                               ; Unused
  dc.b    "                                        "              ; Notes (unused)
  dc.b    "JUE             "                                      ; Country codes
