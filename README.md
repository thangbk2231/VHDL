# VHDL
## VHDL sample project
https://www.fpga4student.com/p/vhdl-project.html  

-----------------------------------------------------  
## About jpeg
https://vi.wikipedia.org/wiki/JPEG  
https://vi.wikipedia.org/wiki/YUV  

### Jpeg decoder
http://www.svcl.ucsd.edu/courses/ece161c/handouts/DCT.pdf  

### Jpeg(VNese)
https://viblo.asia/p/nen-anh-theo-chuan-jpeg-maGK7pzOZj2  

-----------------------------------------------------  
## VHDL Reference
https://www.ics.uci.edu/~jmoorkan/vhdlref/  

### Sensitive list
https://www.ics.uci.edu/~jmoorkan/vhdlref/process.html  

### Concurrent Signal Assignment(Phép gán tín hiệu đồng thời)
https://www.ics.uci.edu/~jmoorkan/vhdlref/conc_s_a.html  
Concurrent Statement	----used in ---->	Architecture  
Phép gán xẩy ra bất cứ khi nào giá trị của biểu thức bên phải thay đổi  

architecture CONC of HA is  
begin  
	SUM   <= A xor B;  
	CARRY <= A and B;  
end CONC;  

### Conditional Signal Assignment(Phép gán tín hiệu có điều kiện)
https://www.ics.uci.edu/~jmoorkan/vhdlref/cond_s_a.html  
Concurrent Statement	---- used in ---->	Architecture  

### Sequential Signal Assignment(Phép gán tín hiệu tuần tự)  
https://www.ics.uci.edu/~jmoorkan/vhdlref/seq_s_a.html  
Sequential statement	---- used in ---->	Process/Procedure  
