//
//  main.m
//  IntroToObjC
//
//  Created by Christopher Constable on 9/15/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSLogTutorial.h"
#import "NSObjectTutorial.h"
#import "NSStringTutorial.h"
#import "NSArrayTutorial.h"
#import "ObjCRuntimeTutorial.h"

// Every Obj-C program (even an iOS app) starts with this declaration:
// the main function. Notice this is a C-style function.
int main(int argc, const char * argv[])
{

    // The autoreleasepool sounds mysterious but really all it does is
    // tells the Obj-C compiler and runtime to automatically handle
    // allocating and deallocating memory for us.
    @autoreleasepool {
        
        // Here are two shortcuts that are going to help you:
        // "cmd + k" comments/uncomments lines of code
        // "cmd + right-click" brings you to the implementation of a method.
        //
        // Use these shortcuts to uncomment the methods to see the output
        // and inspect them.
       
        //
        // Logging
        //
        
//        [NSLogTutorial formattingNSLog];
        
        //
        // Object Instantiation
        //
        
//        [NSObjectTutorial objectInstantiation];
        
        //
        // Strings
        //
        
//        [NSStringTutorial createStrings];
//        [NSStringTutorial testStringEquality1];
//        [NSStringTutorial testStringEquality2];
//        [NSStringTutorial testStringEquality3];
//        [NSStringTutorial testStringMemoryAddresses];
        
        //
        // Arrays
        //
        
//        [NSArrayTutorial creatingArrays];
//        [NSArrayTutorial accessingAndInsertingItems];
//        [NSArrayTutorial usefulArrayMethods];
//        [NSArrayTutorial iteratingArrays];
        
        //
        // The Objective-C Runtime
        //
        
//        [ObjCRuntimeTutorial getTheClassOfAnObject];
//        [ObjCRuntimeTutorial printNamesOfClasses];
//        [ObjCRuntimeTutorial createClassesFromStrings];
//        [ObjCRuntimeTutorial testEqualityOfClasses];
        
        // This method will cause the program to crash
//        [ObjCRuntimeTutorial testCallingMethodThatDoesntExist];
        
//        [ObjCRuntimeTutorial testAddingAMethodToClass];
        
    }
    
    // Like C, returning 0 from main signifies that the app has
    // exited without error.
    return 0;
}

