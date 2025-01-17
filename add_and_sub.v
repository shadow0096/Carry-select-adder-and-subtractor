`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 19:09:44
// Design Name: 
// Module Name: add_and_sub
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


module add_and_sub(a,b,cin,sum,cout);
    input [7:0] a,b;
    input cin;
    output [7:0] sum;
    output cout;
    wire [7:0] carry,bout;
    
    
     assign bout[0]=cin ^ b[0];
     assign bout[1]=cin ^ b[1];
     assign bout[2]=cin ^ b[2];
     assign bout[3]=cin ^ b[3];
     assign bout[4]=cin ^ b[4];
     assign bout[5]=cin ^ b[5];
     assign bout[6]=cin ^ b[6];
     assign bout[7]=cin ^ b[7];
     adder a0(a[0],bout[0],cin,sum[0],carry[0]);
     adder a1(a[1],bout[1],carry[0],sum[1],carry[1]);
     adder a2(a[2],bout[2],carry[1],sum[2],carry[2]);
     adder a3(a[3],bout[3],carry[2],sum[3],carry[3]);
     adder a4(a[4],bout[4],carry[3],sum[4],carry[4]);
     adder a5(a[5],bout[5],carry[4],sum[5],carry[5]);
     adder a6(a[6],bout[6],carry[5],sum[6],carry[6]);
     adder a7(a[7],bout[7],carry[6],sum[7],carry[7]);
     assign cout=carry[7];
endmodule
