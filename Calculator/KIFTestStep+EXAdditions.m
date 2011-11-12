//
//  KIFTestStep+EXAdditions.m
//  Calculator
//
//  Created by Robert Corlett on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "KIFTestStep+EXAdditions.h"

@implementation KIFTestStep (EXAdditions)

+ (id)stepToReset;
{
    return [self stepToTapViewWithAccessibilityLabel:@"clear"];
}

@end