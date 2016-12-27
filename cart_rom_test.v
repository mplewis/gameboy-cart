`timescale 1 ns / 100 ps

module cart_rom_testbench ();

  reg [15:0] addr;
  wire [7:0] out;

  cart_rom c(.addr(addr), .out(out));

  always @* begin
    #10 addr <= addr + 1;
  end

  initial begin
    addr = 0;
    $display("Simulation start.");
    $monitor("Time: %d\tAddr: %x\tOut: %x", $time, addr, out);
    #300 $finish;
  end

endmodule
