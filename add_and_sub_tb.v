`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 19:26:32
// Design Name: 
// Module Name: add_and_sub_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add_and_sub_tb();
    reg [7:0] a,b;
    reg cin;
    wire [7:0] sum;
    wire cout;
    add_and_sub uut(a,b,cin,sum,cout);
    initial
        begin
            a=8'd100;b=8'd100;cin=0;
            #10 a=8'd255;b=8'd255;cin=0;
            #10 a=8'd180;b=8'd190;cin=0;
            #10 a=8'd236;b=8'd123;cin=0;
             #10 a=8'd255;b=8'd255;cin=1;
                       #10 a=8'd180;b=8'd190;cin=1;
                       #10 a=8'd236;b=8'd123;cin=1;
            #10 a=8'd170;b=8'd190;cin=1;
        end
endmodule
