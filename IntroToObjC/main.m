//
//  main.m
//  IntroToObjC
//
//  Created by Christopher Constable on 9/15/13.
//  Copyright (c) 2013 AnalogSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString-TAS.h"
#import "ObjC-Runtime-TAS.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        [NSString_TAS testStringEquality1];
//        [NSString_TAS testStringEquality2];
//        [NSString_TAS testStringEquality3];
//        [NSString_TAS testStringMemoryAddresses];
        
        [ObjC_Runtime_TAS getTheClassOfAnObject];
        [ObjC_Runtime_TAS printNamesOfClasses];
        [ObjC_Runtime_TAS createClassesFromStrings];
        [ObjC_Runtime_TAS testEqualityOfClasses];
        
//        [ObjC_Runtime_TAS testCallingMethodThatDoesntExist];
//        [ObjC_Runtime_TAS testAddingAMethodToClass];
        
    }
    return 0;
}

