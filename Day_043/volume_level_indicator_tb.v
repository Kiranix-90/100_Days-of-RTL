`timescale 1ns / 1ps
module volume_level_indicator_tb();

reg  [7:0] volume_level;
wire [7:0] leds;

volume_level_indicator DUT (
    .volume_level(volume_level),
    .leds(leds)
);

initial begin
    $dumpfile("volume_level_indicator_edge.vcd");
    $dumpvars(0, volume_level_indicator_tb);
    $monitor($time, " volume_level=%0d leds=%b", volume_level, leds);
end

initial begin
    volume_level = 0;   #10;  // no LED ON
    volume_level = 1;   #10;  // only 1 LED
    volume_level = 4;   #10;  // half LEDs
    volume_level = 7;   #10;  // almost full
    volume_level = 8;   #10;  // all LEDs ON
    $finish;
end

endmodule
