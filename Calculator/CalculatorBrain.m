//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Robert Corlett on 10/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (void)setOperand:(double)aDouble
{
    operand = aDouble;
}
- (void)performWaitingOperation
{
    if ([@"+" isEqualToString:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"*" isEqualToString:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"-" isEqualToString:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if ([@"/" isEqualToString:waitingOperation])
    {
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}
- (double)performOperation:(NSString *)operation
{
    if ([operation isEqualToString:@"sqrt"])
    {
        operand = sqrt(operand);
    }
    else if ([@"+/-" isEqualToString:operation])
    {
        operand = - operand;
    }
    else if ([@"clear for lucy" isEqualToString:operation])
    {
        operand = 0;
    }
    else
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
    
    
}

@end
