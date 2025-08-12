module hello_world;
    initial begin
        $display("Hello, World!");
        $finish;
    end
    
    // SystemVerilog specific features
    string message = "Hello, World!";
    
    always_comb begin
        // SystemVerilog always_comb block
        // This demonstrates SystemVerilog syntax
    end
    
    initial begin
        $display("SystemVerilog message: %s", message);
    end
endmodule