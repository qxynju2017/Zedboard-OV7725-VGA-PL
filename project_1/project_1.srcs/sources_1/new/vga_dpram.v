
/*

vga_dpram  VGA_BUFFER (
.wr_clk (  ),
.wr_en (  ),
.wr_addr (  ),
.wr_data (  ),

.rd_clk (  ),
.rd_addr (  ),
.rd_data (  )
);

*/

module vga_dpram(
        input wr_clk,wr_en,
        input [18:0] wr_addr,
        input [11:0]wr_data,
        input rd_clk,
        input [18:0] rd_addr,
        output   [11:0]  rd_data
    );


    DPRAM_wrapper DPRAM (
                      .BRAM_PORTA_addr( wr_addr ),
                      .BRAM_PORTA_clk( wr_clk ),
                      .BRAM_PORTA_din( wr_data ),
                      .BRAM_PORTA_en( 1'b1  ),
                      .BRAM_PORTA_we( wr_en ),

                      .BRAM_PORTB_addr( rd_addr ),
                      .BRAM_PORTB_clk( rd_clk ),
                      .BRAM_PORTB_dout( rd_data ),
                      .BRAM_PORTB_en( 1'b1  )
                  );

endmodule
