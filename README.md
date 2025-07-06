# Hello World - Sega Genesis (Motorola 68000 Assembly)

This project is a minimal **Hello World** demo for the **Sega Genesis / Mega Drive** game console, implemented in **Motorola 68000 assembly language**. It serves as a foundational example for developers interested in retro programming, low-level game development, and learning how to work with Genesis hardware directly.

## 🕹 Project Overview

This project initializes the Sega Genesis display hardware and renders a static **"Hello World"** message on the screen using direct manipulation of VRAM and video registers.

It uses:

- **Motorola 68000 assembly**: The main CPU of the Genesis.
- **vasmm68k_mot**: An open-source assembler used to compile 68k assembly code.
- **Visual Studio Code**: Recommended editor with syntax highlighting and build integration.

## 🧰 Requirements

To build and run this project, you need:

- [`vasmm68k_mot`](https://sun.hasenbraten.de/vasm/)
- [`vlink`](https://sun.hasenbraten.de/vlink/) (optional linker if using object files)
- [Genesis emulator](https://www.retroarch.com/) such as **Gens**, **Fusion**, or **BlastEm**
- Visual Studio Code (with optional 68k syntax highlighting extension)

## 📁 Project Structure

hello-genesis/
├── src/
│ └── main.asm # Main program file (Hello World code)
├── main.gen   # Compiled ROM image
└── README.md  # Project documentation


## 🧱 How It Works

- **VRAM Setup**: Initializes background tilemap and tile data.
- **VDP Access**: Configures the Video Display Processor (VDP) registers.
- **Text Display**: Renders "Hello World" by writing character tiles to the background layer.

The `main.asm` file demonstrates:

- 68000 register usage (`D0-D7`, `A0-A7`)
- Memory-mapped I/O with the VDP
- Looping and branching
- Inline data for tiles

## 🛠 Building the ROM

To compile the ROM:

```bash
chmod +x build.sh
./build.sh
