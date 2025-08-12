void _start() {
    const char msg[] = "Hello, World!\n";
    
    asm volatile (
        "mov $1, %%rax\n"
        "mov $1, %%rdi\n"
        "mov %0, %%rsi\n"
        "mov $14, %%rdx\n"
        "syscall\n"
        :
        : "r" (msg)
        : "rax", "rdi", "rsi", "rdx"
    );
    
    asm volatile (
        "mov $60, %%rax\n"
        "mov $0, %%rdi\n"
        "syscall\n"
        :
        :
        : "rax", "rdi"
    );
}