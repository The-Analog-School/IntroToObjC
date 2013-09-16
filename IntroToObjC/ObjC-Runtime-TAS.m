//
//  ObjC-Runtime-TAS.m
//  IntroToObjC
//
//  Created by Christopher Constable on 9/16/13.
//  Copyright (c) 2013 AnalogSchool. All rights reserved.
//

#import "ObjC-Runtime-TAS.h"
#include <objc/runtime.h>

@implementation ObjC_Runtime_TAS

/**
 https://developer.apple.com/library/mac/documentation/cocoa/reference/ObjCRuntimeRef/Reference/reference.html
 */

/**
 
Table 6-1  Objective-C type encodings
 
Code            Meaning
----            -------
c               A char
i               An int
s               A short
l               A long (l is treated as a 32-bit quantity on 64-bit programs.)
q               A long long
C               An unsigned char
I               An unsigned int
S               An unsigned short
L               An unsigned long
Q               An unsigned long long
f               A float
d               A double
B               A C++ bool or a C99 _Bool
v               A void
*               A character string (char *)
@               An object (whether statically typed or typed id)
#               A class object (Class)
:               A method selector (SEL)
[array type]    An array
{name=type...}  A structure
(name=type...)  A union
bnum            A bit field of num bits
^type           A pointer to type
?               An unknown type (among other things, this code is used for function pointers)
 
*/

+ (void)testCallingMethodThatDoesntExist
{
    NSObject *object = [[NSObject alloc] init];
    [object performSelector:@selector(ourNewMethod)];
}






+ (void)testAddingAMethodToClass
{
    NSString *uniqueName = @"ourNewMethod";
    SEL selector = sel_registerName([uniqueName UTF8String]);
    IMP implementation = imp_implementationWithBlock(^(){
        NSLog(@"New method was called!");
    });
    class_addMethod([NSObject class], selector, implementation, "v@:@");
    
    // Now, this should work
    [ObjC_Runtime_TAS testCallingMethodThatDoesntExist];
}

@end
