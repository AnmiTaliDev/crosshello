#import <Foundation/Foundation.h>
#include <iostream>
#include <string>

// C++ class
class CppClass {
private:
    std::string message;
    
public:
    CppClass(const std::string& msg) : message(msg) {}
    
    void printMessage() {
        std::cout << message << std::endl;
    }
};

// Objective-C class
@interface ObjCClass : NSObject
- (void)sayHello;
@end

@implementation ObjCClass
- (void)sayHello {
    NSLog(@"Hello, World! from Objective-C");
}
@end

int main() {
    @autoreleasepool {
        // Using C++
        CppClass cppObj("Hello, World! from C++");
        cppObj.printMessage();
        
        // Using Objective-C
        ObjCClass *objcObj = [[ObjCClass alloc] init];
        [objcObj sayHello];
        
        // Mixed usage (Objective-C++)
        NSLog(@"Hello, World! from Objective-C++");
    }
    
    return 0;
}