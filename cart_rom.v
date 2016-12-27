// Emulates a 32K non-switched ROM bank.
// Loads 4096 bytes from decr.hex: [FF...00], repeating.

module cart_rom (addr, out);

  input [15:0] addr;
  output [7:0] out;

  reg [7:0] mem [0:4095];

  initial begin
    $readmemh("decr.hex", mem);
  end

  assign out = mem[addr];

endmodule
