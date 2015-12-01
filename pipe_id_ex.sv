/* Pipeline register ID_EX 
 * cl_decode outputs: 
 *   is_load_op_c: mem_to_reg signal (transfer data from memory to registers)
 *   op_writes_rf_o: reg_write signal (writes back to registers)
 *   is_mem_op_o: indicated if instruction is a memory operation 
 *   is_store_op_o: indicates whether instruction stores into memory
 *   is_byte_op_o: indicates whether memory instruction is word or byte oriented
 * alu inputs: 
 *   rs_val
 *   rt_val/immediate
 */
module pipe_id_ex(); 
 
 always_ff@(posedge clk) begin 
	
 end 
 
 