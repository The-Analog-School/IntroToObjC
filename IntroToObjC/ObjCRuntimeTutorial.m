//
//  ObjCRuntimeTutorial.m
//  IntroToObjC
//
//  Created by Christopher Constable on 9/16/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import "ObjCRuntimeTutorial.h"
#include <objc/runtime.h>

@implementation ObjCRuntimeTutorial

+ (void)getTheClassOfAnObject
{
    NSString *myString = @"hello there";
    Class classVariable = [myString class];
    NSLog(@"Our string is a %@", classVariable);
}
















+ (void)printNamesOfClasses
{
    NSString *classString = NSStringFromClass([NSObject class]);
    NSLog(@"%@", classString);
    
    classString = NSStringFromClass([NSString class]);
    NSLog(@"%@", classString);
    
    classString = NSStringFromClass([NSCalendar class]);
    NSLog(@"%@", classString);
    
    classString = NSStringFromClass([NSArray class]);
    NSLog(@"%@", classString);
    
    classString = NSStringFromClass([NSMutableArray class]);
    NSLog(@"%@", classString);
}















+ (void)createClassesFromStrings
{
    Class genericClass;
    genericClass = NSClassFromString(@"NSString");
    NSString *myString = [[genericClass alloc] initWithCString:"hello there"
                                                      encoding:NSUTF8StringEncoding];
    NSLog(@"Class: %@ Content: %@", genericClass, myString);
    
    genericClass = NSClassFromString(@"NSArray");
    NSArray *myArray = [[genericClass alloc] initWithObjects:@"1", @"2", @"3", nil];
    NSLog(@"Class: %@ Content: %@", genericClass, myArray);
}















+ (void)testEqualityOfClasses
{
    NSString *string1 = @"1";
    NSArray *array1 = [[NSArray alloc] init];
    
    if ([string1 isKindOfClass:[NSString class]]) {
        NSLog(@"string1 is a NSString.");
    }
    else {
        NSLog(@"string1 is not an NSString.");
    }
    
    if ([array1 isKindOfClass:[NSString class]]) {
        NSLog(@"array1 is a NSString.");
    }
    else {
        NSLog(@"array1 is not an NSString.");
    }
}
















+ (void)testCallingMethodThatDoesntExist
{
    NSObject *object = [[NSObject alloc] init];
    [object performSelector:@selector(ourNewMethod)];
}













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

+ (void)testAddingAMethodToClass
{
    NSString *uniqueName = @"ourNewMethod";
    SEL selector = sel_registerName([uniqueName UTF8String]);
    IMP implementation = imp_implementationWithBlock(^(){
        NSLog(@"New method was called!");
    });
    class_addMethod([NSObject class], selector, implementation, "v@:@");
    
    // Now, this should work
    [ObjCRuntimeTutorial testCallingMethodThatDoesntExist];
}

@end
