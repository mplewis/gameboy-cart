`timescale 1 ns / 100 ps

module cart_rom_testbench ();

  output reg [15:0] addr;
  input [7:0] out;

  cart_rom c(.addr(addr), .out(out));

  always @* begin
    #10 addr <= addr + 1;
  end

  initial begin
    $dumpfile("cart_rom_test.vcd");
    $dumpvars(0, addr, out);
    $display("Simulation start.");
    $monitor("Time: %d\tAddr: %x\tOut: %x", $time, addr, out);

    addr = 0;
    #200 $finish;
  end

endmodule
