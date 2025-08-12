from myhdl import *

@block
def hello_world():
    """A simple Hello World module in MyHDL"""
    
    @always_comb
    def logic():
        print("Hello, World! (MyHDL)")
    
    return logic

# Test the module
if __name__ == "__main__":
    hello_inst = hello_world()
    hello_inst.run_sim()
    print("Hello, World! - MyHDL simulation completed")