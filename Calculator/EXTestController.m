//
//  EXTestController.m
//  Calculator
//
//  Created by Robert Corlett on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EXTestController.h"
#import "KIFTestScenario+EXAdditions.h"

@implementation EXTestController

- (void)initializeScenarios;
{
    [self addScenario:[KIFTestScenario scenarioToCalculate]];
    [self addScenario:[KIFTestScenario scenarioToCalculate2]];
    // Add additional scenarios you want to test here
}

@end
