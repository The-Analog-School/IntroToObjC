//
//  ObjC-Runtime-TAS.h
//  IntroToObjC
//
//  Created by Christopher Constable on 9/16/13.
//  Copyright (c) 2013 AnalogSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjC_Runtime_TAS : NSObject

+ (void)testCallingMethodThatDoesntExist;
+ (void)testAddingAMethodToClass;

@end
