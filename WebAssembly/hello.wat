(module
  (import "env" "print" (func $print (param i32 i32)))
  (memory (export "memory") 1)
  (data (i32.const 0) "Hello, World!")
  (func (export "main")
    i32.const 0
    i32.const 13
    call $print
  )
)
