//
//  CppDependencyWrapper.m
//  CppDependencyTutorial
//
//  Created by ayush mahajan on 12/10/20.
//  Copyright © 2020 ayush mahajan. All rights reserved.
//

#import "CppDependencyWrapper.h"
#import "ExampleC++Library/ExampleCppLibrary.h"

@implementation CppDependencyWrapper
{
    ExampleCppLibrary lib;
}

-(NSString *)randomStringWith: (NSUInteger)size {
    std::string cppString = lib.randomString(int(size));
    const char * chars = cppString.c_str();
    return [[NSString alloc] initWithCString:chars encoding:NSUTF8StringEncoding];
}
@end
