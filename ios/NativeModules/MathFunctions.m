//
//  MathFunctions.m
//  MyApp
//
//  Created by Huynh on 20/03/2024.
//

#import <Foundation/Foundation.h>

#import "MathFunctions.h"

@implementation MathFunctions

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(add:(NSInteger)a :(NSInteger)b :(RCTResponseSenderBlock)callback) {
  NSInteger result = a + b;
  callback(@[[NSNull null], @(result)]);
}

@end
