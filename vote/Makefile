VERILOG = iverilog
TARGET = voter.vcd
TEMP = temp.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): voter_tb.v voter_case.v
	$(VERILOG) -o $(TEMP) voter_tb.v voter_case.v
clean:
	-del $(TARGET)
	-del $(TEMP)
