import chisel3._
import chisel3.util._

class HelloWorld extends Module {
  val io = IO(new Bundle {
    val out = Output(UInt(8.W))
  })

  // "Hello, World!" as a series of ASCII values
  val message = VecInit("Hello, World!\n".map(_.toInt.U(8.W)))
  val counter = RegInit(0.U(log2Ceil(message.length).W))
  
  when(counter < message.length.U) {
    counter := counter + 1.U
  }
  
  io.out := message(counter)
}