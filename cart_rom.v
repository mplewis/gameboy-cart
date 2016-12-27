module cart_rom (addr, out);

  input wire [15:0] addr;
  output reg [7:0] out;

  reg [7:0] mem [0:8191];

  initial begin
    $readmemh("decr.hex", mem);
  end

  assign out = mem[addr];

endmodule
