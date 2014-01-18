//
//  NSObjectTutorial.m
//  IntroToObjC
//
//  Created by Christopher Constable on 1/17/14.
//  Copyright (c) 2014 AnalogSchool. All rights reserved.
//

#import "NSObjectTutorial.h"

@implementation NSObjectTutorial

+ (void) objectInstantiation
{
    // The bread and butter instantiation: alloc/init.
    // "alloc" creates the memory for the object and "init"
    // initializes the object. You will see this EVERYWHERE.
    // It's the defacto method of instantiation.
    NSObject *object1 = [[NSObject alloc] init];
    NSLog(@"%@", object1);
    
    // The "new" keyword does the same thing. However, it's
    // not used as much as you would expect.
    NSObject *object2 = [NSObject new];
    NSLog(@"%@", object2);
    
    // Some classes have special "factory methods" that let you
    // create instances of the class easily. Use these if they
    // are available over "new".
    NSArray *array1 = [NSArray array];
    NSLog(@"%@", array1);
    
    // Generally, objects have many methods that start with the word
    // "init". These are the "designated initializers". They are simply
    // there to help you configure the object.
    NSArray *array2 = [[NSArray alloc] initWithObjects:@"item1", @"item2", nil];
    NSLog(@"%@", array2);
}

@end
