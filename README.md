# Game Boy Cart Dev Kit

I'm working on developing an open-source Game Boy cartridge development kit using an FPGA.

# Usage

```sh
# Install the dev tools
brew install icarus-verilog homebrew/gui/gtkwave

# Compile the testbench
iverilog -g2012 cart_rom.v cart_rom_test.v
# Run the testbench
vvp a.out
# View the waveform
gtkwave cart_rom_test.vcd
```

# License

MIT
