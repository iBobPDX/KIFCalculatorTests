//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Robert Corlett on 10/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;


@end
