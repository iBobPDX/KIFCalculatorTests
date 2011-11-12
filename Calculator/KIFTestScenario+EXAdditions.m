//
//  KIFTestScenario+EXAdditions.m
//  Calculator
//
//  Created by Robert Corlett on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "KIFTestScenario+EXAdditions.h"
#import "KIFTestStep.h"
#import "KIFTestStep+EXAdditions.h"

@implementation KIFTestScenario (EXAdditions)

+ (id)scenarioToCalculate;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can successfully calculate"];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"8"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"+"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"2"]];
    //[scenario addStep:[KIFTestStep stepToWaitForTimeInterval:4 description:@"Wait for 3 seconds"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"="]];
    
    
    return scenario;
}

+ (id)scenarioToCalculate2;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Another calculation"];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"-"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"2"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"+"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"4"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"6"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"="]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"Look ma' no hands!" intoViewWithAccessibilityLabel:@"textField"]];
    [scenario addStep:[KIFTestStep stepToWaitForTimeInterval:3 description:@"3 seconds"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"clear"]];


    return scenario;
}

@end
