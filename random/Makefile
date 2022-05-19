VERILOG = iverilog
TARGET = random.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): random_tb.v random.v
	$(VERILOG) -o $(TEMP) random_tb.v random.v
clean:
	-del $(TARGET)
	-del $(TEMP)