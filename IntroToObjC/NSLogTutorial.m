//
//  NSLogTutorial.m
//  IntroToObjC
//
//  Created by Christopher Constable on 1/17/14.
//  Copyright (c) 2014 AnalogSchool. All rights reserved.
//

#import "NSLogTutorial.h"

@implementation NSLogTutorial

+ (void)formattingNSLog
{
    //////////////////////////////////////////
    // Hello World!
    //////////////////////////////////////////
    
    NSLog(@"Hello World!");
    
    //////////////////////////////////////////
    // Logging
    //////////////////////////////////////////
    
    // NSLog let's us print things out to the console.
    // NSLog takes C-style / printf() style formatters.
    // Here's some examples:
    NSLog(@"An integer: %d", 26);
    NSLog(@"A float: %f", 3.16);
    NSLog(@"An object: %@", [[NSObject alloc] init]);
    NSLog(@"A integer with leading zeros: %04d", 3);
    NSLog(@"A float with trailing zeros: %0.4f", 8.0);
}

@end
