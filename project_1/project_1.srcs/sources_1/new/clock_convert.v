
/*
clock_convert CLK(
 .CLK100M(  ),
 .CLK25M(  ),
 .LOCK(  )
);
*/

module clock_convert(
        input CLK100M,
        output CLK25M,LOCK
    );


    CLK_wrapper CLK_CVT
                (
                    .clk_in1(CLK100M),
                    .clk_out1(CLK25M),
                    .locked(LOCK)
                );

endmodule
