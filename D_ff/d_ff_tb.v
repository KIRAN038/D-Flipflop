`timescale 1ns/1ps

module d_ff_tb;

reg d, clk;
wire q, q_b;

d_flipflop uut (
    .q(q),
    .q_b(q_b),
    .d(d),
    .clk(clk)
);

// clock
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

// stimulus
initial begin
    d = 0;
    #15 d = 1;
    #20 d = 0;
    #20 d = 1;
    #20 $finish;
end

// waveform
initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0, d_ff_tb);

    $monitor("Time=%0t clk=%b d=%b q=%b q_b=%b",
              $time, clk, d, q, q_b);
end

endmodule