//
//  ObjCRuntimeTutorial.h
//  IntroToObjC
//
//  Created by Christopher Constable on 9/16/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjCRuntimeTutorial : NSObject

+ (void)getTheClassOfAnObject;
+ (void)printNamesOfClasses;
+ (void)createClassesFromStrings;
+ (void)testEqualityOfClasses;

+ (void)testCallingMethodThatDoesntExist;
+ (void)testAddingAMethodToClass;

@end
