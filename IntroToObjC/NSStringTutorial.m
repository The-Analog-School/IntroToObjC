//
//  NSStringTutorial.m
//  IntroToObjC
//
//  Created by Christopher Constable on 9/15/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import "NSStringTutorial.h"

@implementation NSStringTutorial




+ (void)createStrings
{
    // Using a "C style" string.
    // You won't need to create strings like this very much. It's
    // a lot of typing right? You'll usually encounter char * type
    // strings when interfacing with C APIs.
    char *cString = "I'm an old-fashioned C string!\0";
    NSString *objcString = [[NSString alloc] initWithCString:cString
                                                    encoding:NSUTF8StringEncoding];
    NSLog(@"%@", objcString);
    
    // Using the "string literal".
    // This is a common and easy way to create strings from text.
    NSString *stringLiteral = @"That was easy.";
    NSLog(@"%@", stringLiteral);
    
    // Using a "formatted string".
    // Often times, strings need to be created dynamically with variable
    // data. Using "stringWithFormat:" is how we accomplish this.
    NSString *formattedString = [NSString stringWithFormat:@"Today's date is %@", [NSDate date]];
    NSLog(@"%@", formattedString);
}





+ (void)testStringEquality1
{
    NSString *stringNormal1 = [[NSString alloc] initWithCString:"hello there\0"
                                                      encoding:NSUTF8StringEncoding];
    NSString *stringLiteral1 = @"hello there";
    NSString *stringLiteral2 = @"hello there";
    
    NSString *stringNormal2 = [[[NSAttributedString alloc] initWithString:stringNormal1] string];
    
    if (stringNormal1 == stringLiteral1) {
        NSLog(@"SN1 and SL1 are equal");
    }
    else {
        NSLog(@"SN1 and SL1 are not equal");
    }
    
    if (stringLiteral1 == stringLiteral2) {
        NSLog(@"SL1 and SL2 are equal");
    }
    else {
        NSLog(@"SL1 and SL2 are not equal");
    }
    
    if (stringNormal1 == stringNormal2) {
        NSLog(@"SN1 and SN2 are equal");
    }
    else {
        NSLog(@"SN1 and SN2 are not equal");
    }
}






+ (void)testStringEquality2
{
    NSString *stringNormal1 = [[NSString alloc] initWithCString:"hello there"
                                                       encoding:NSUTF8StringEncoding];
    NSString *stringLiteral1 = @"hello there";
    NSString *stringLiteral2 = @"hello there2";
    
    if ([stringNormal1 isEqualToString:stringLiteral1]) {
        NSLog(@"SN1 and SL1 are equal");
    }
    else {
        NSLog(@"SN1 and SL1 are not equal");
    }
    
    if ([stringLiteral1 isEqualToString:stringLiteral2]) {
        NSLog(@"SL1 and SL2 are equal");
    }
    else {
        NSLog(@"SL1 and SL2 are not equal");
    }
    
    if ([stringNormal1 isEqual:stringLiteral1]) {
        NSLog(@"SN1 and SL1 are equal");
    }
    else {
        NSLog(@"SN1 and SL1 are not equal");
    }
}






+ (void)testStringEquality3
{
    NSString *stringLiteral1 = @"hello there";
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:stringLiteral1];
    NSString *stringLiteral2 = [attributedString string];
    
    if (stringLiteral1 == stringLiteral2) {
        NSLog(@"SL1 and SL2 are equal");
    }
    else {
        NSLog(@"SL1 and SL2 are not equal");
    }
    
    if ([stringLiteral1 isEqualToString:stringLiteral2]) {
        NSLog(@"SL1 and SL2 are equal");
    }
    else {
        NSLog(@"SL1 and SL2 are not equal");
    }
}






+ (void)testStringMemoryAddresses
{
    NSString *stringNormal1 = [[NSString alloc] initWithCString:"hello there"
                                                      encoding:NSUTF8StringEncoding];
    NSString *stringNormal2 = [[NSString alloc] initWithCString:"hello there"
                                                       encoding:NSUTF8StringEncoding];
    NSString *stringNormal3 = [[NSString alloc] initWithString:stringNormal2];
    NSString *stringLiteral1 = @"hello there";
    NSString *stringLiteral2 = @"hello there";
    NSString *stringCopy = [stringLiteral1 copy];
    
    NSLog(@"SN1\t(%p)\t%@", (__bridge void *)stringNormal1, stringNormal1);
    NSLog(@"SN2\t(%p)\t%@", (__bridge void *)stringNormal2, stringNormal2);
    NSLog(@"SN3\t(%p)\t%@", (__bridge void *)stringNormal3, stringNormal3);
    NSLog(@"SL1\t(%p)\t%@", (__bridge void *)stringLiteral1, stringLiteral1);
    NSLog(@"SL2\t(%p)\t%@", (__bridge void *)stringLiteral2, stringLiteral2);
    NSLog(@"SC1\t(%p)\t%@", (__bridge void *)stringCopy, stringCopy);
}

@end
