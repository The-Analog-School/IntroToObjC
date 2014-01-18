//
//  NSArrayTutorial.m
//  IntroToObjC
//
//  Created by Christopher Constable on 1/17/14.
//  Copyright (c) 2014 AnalogSchool. All rights reserved.
//

#import "NSArrayTutorial.h"

@implementation NSArrayTutorial







+ (void)creatingArrays
{
    // The following statements all declare equivalent arrays.
    NSArray *array1 = [[NSArray alloc] initWithObjects:@"object 1", @"object 2", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"object 1", @"object 2", nil];
    NSArray *array3 = @[@"object 1", @"object 2"];
    
    // The last statement was called an "array literal". It's the defacto way
    // to create arrays in modern objective-c.
    
    NSLog(@"Array 1: %@", array1);
    NSLog(@"Array 2: %@", array2);
    NSLog(@"Array 3: %@", array3);

    // By default, arrays are immutable (i.e. they cannot be modified). If
    // we want arrays that we can add objects to we need to create "mutable"
    // arrays.
    NSMutableArray *mutableArray1 = [NSMutableArray array];
    [mutableArray1 addObject:@"newObject"];
    [mutableArray1 addObject:@"newObject"];
    [mutableArray1 addObject:@"newObject"];
    [mutableArray1 addObject:@"newObject"];
    
    NSLog(@"Mutable Array 1: %@", mutableArray1);
    
    // Unfortunately, there is no "mutable array literal". However, to make
    // a mutable array from an immutable array you can pass the "mutableCopy"
    // message.
    NSArray *immutableArray = @[@"object1", @"object2"];
    NSMutableArray *mutableArray2 = [immutableArray mutableCopy];
    
    NSLog(@"Mutable Array 2: %@", mutableArray2);
}











+ (void)accessingAndInsertingItems
{
    // Remember: arrays are 0-index based.
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
    
    NSLog(@"First Item: %@", [array objectAtIndex:0]);
    NSLog(@"First Item: %@", [array firstObject]);
    NSLog(@"Second Item: %@", [array objectAtIndex:1]);
    NSLog(@"Third Item: %@", array[2]);
    NSLog(@"Fourth Item: %@", array[3]);
    NSLog(@"Last Item: %@", [array lastObject]);
    
    // Objects are added to the end.
    [array addObject:@"five"];
    NSLog(@"Last Item: %@", [array lastObject]);
    
    // Objects can also be inserted in the middle. All the objects
    // after the object inserted are shifted down.
    [array insertObject:@"four and a half" atIndex:4];
    array[1] = @"two and a half";
    
    NSLog(@"Array: %@", array);
}









+ (void)usefulArrayMethods
{
    // Often times you'll need to break a string apart into chunks for processing.
    // This is called "tokenizing" the string. Sometimes, you'll also need to put the
    // string back together. NSArray provides helpers for this.
    // Let's pretend we received this input:
    NSArray *commandArray = @[@"git", @"clone", @"https://github.com/NYTimes/objective-c-style-guide.git", @"Obj-C-Style-Guide"];
    
    // We can form a command string like this:
    NSString *commandString = [commandArray componentsJoinedByString:@" "];
    NSLog(@"Command String: %@", commandString);
    
    // We can also combine arrays...
    NSArray *goodHabits = @[@"sleeping", @"using the dot-syntax for state", @"descriptive method names", @"showering"];
    NSArray *badHabits = @[@"drinking way too much coffee", @"using #defines", @"making HUGE commits to git", @"not showering"];
    
    NSArray *habits = [goodHabits arrayByAddingObjectsFromArray:badHabits];
    NSLog(@"Habits: %@", habits);
    
    // "count" lets us see how many items are in our array.
    NSLog(@"Count: %lu", habits.count);
}












+ (void)iteratingArrays
{
    NSArray *array = @[@"1", @"2", @"3", @"4", @"5", @"6",];
    
    // There are a few ways to iterate arrays. The most basic is using a C-style
    // "for loop".
    for (int i = 0; i < array.count; i++) {
        // Do something with the values...
    }
    
    // However, a more modern way is to use the "for-in" loop.
    // This is easier to write and gives us some free casting:
    for (NSString *currentString in array) {
        // Do something with each string...
    }
    
    // We can also use block-based enumeration. Block-based enumeration
    // takes in a block and enumerates the array passing each item
    // to the block.
    // If this doesn't make sense right now don't worry about.
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"Item %lu: %@", idx, obj);
    }];
}











@end
