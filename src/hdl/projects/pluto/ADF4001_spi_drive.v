module ADF4001_spi_drive(
//系统时钟与复位
    input 				clk,
    input				rst_n,
	
//状态指示
    input 				wr_en,          //写使能，高电平有效
    input 		[23:0]  wr_data,        //写数据
    output 	reg 		wr_done,        //写完成信号，高电平有效
    output 	reg 		wr_start,       //输出写开始信号
	
//SPI 接口
    output	reg 		spi_clk,
    output	reg		    spi_csn,
    output	 			spi_sdo
);

reg	   [4:0]   bit_cnt;	            //当前输出的bit数
reg	   [23:0]  command;
reg	   [2:0]   state;
//SPI state    
localparam     IDLE			= 0,            //空闲模式
			   START		= 1,            //开始发送，初始化命令寄存器
			   TR			= 2,            //上升沿
			   TR_0			= 3,            //下降沿
			   DONE			= 4;

//SPI读写
assign spi_sdo = command[23];
always @ (posedge clk or negedge rst_n)
begin
    if(!rst_n) begin
        state       <= IDLE;
        spi_csn     <= 0;           
        bit_cnt     <= 0;
        wr_done 	<= 0;
        spi_clk     <= 0;           //SPI初始状态
    end
    else 
        case (state)
            IDLE   :   if (wr_en)                       
                            begin
                                state   <= START;
                                bit_cnt <= 5'd0;	
                                wr_done <= 1'b0;
                                spi_clk <= 0;
                                spi_csn <= 0;
                            end 

            START :     begin
                                state   <= TR;
                                wr_start<= 1'b1;
                                command <= wr_data;//{1'b0,wr_addr,wr_data};
                                spi_csn <= 1'b0;
                        end
            TR      :   if (bit_cnt <= 5'd23) 
                            begin
                                bit_cnt <= bit_cnt + 5'd1;
                                spi_clk <= 1;
                                state   <= TR_0;
                            end
                        else 
                            begin
                                spi_csn <= 1'b0;
                                bit_cnt <= 5'd0;
                                spi_clk <= 0;
                                state   <= DONE;
                            end
            
            TR_0    :   begin
                            spi_clk <= 0;
                            command <= command << 1;
                            state   <= TR;
                        end

            DONE    :   begin 
                            wr_done  <= 1'b1;
                            wr_start <= 1'b0;
                            spi_csn  <= 1'b1;
                            state <= IDLE;
                        end
            
            default :   state <= IDLE;
        endcase
end
       
endmodule