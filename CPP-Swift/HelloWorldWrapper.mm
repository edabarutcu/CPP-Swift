//
//  HelloWorldWrapper.m
//  CPP-Swift
//
//  Created by detaysoft on 03.04.2022.
//

#import <Foundation/Foundation.h>
#import "HelloWorldWrapper.h"
#import "HelloWorld.hpp"

@implementation HelloWorldWrapper

- (NSString *) sayHello {
    HelloWorld helloWorld;
    std::string helloWorldMessage = helloWorld.sayHello();
    return [NSString
            stringWithCString:helloWorldMessage.c_str()
            encoding:NSUTF8StringEncoding];
}

@end
