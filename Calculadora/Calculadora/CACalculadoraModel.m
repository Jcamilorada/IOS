//
//  CACalculadoraModel.m
//  Calculadora
//
//  Created by Juan Camilo Rada on 6/5/14.
//  Copyright (c) 2014 Juan Camilo Rada. All rights reserved.
//

#import "CACalculadoraModel.h"

@implementation CACalculadoraModel

bool hasValue1;
bool hasValue2;


-(id) init
{
    self = [super init];
    if (self) {
        _result = 0;
        [self clearValues];
    }
    return self;
}

-(void) clearAllValues
{
    [self clearValues];
    _result = 0;
}

-(void) clearValues
{
    _value1 = 0;
    _value2 = 0;
    _operation = @"";
    hasValue1 = false;
    hasValue2 = false;
}

-(int) add:(int)value1 :(int)value2
{
    return value1 + value2;
}

-(int) subtract:(int)value1 :(int)value2
{
    return value1 - value2;
}


-(void)setOperand:(int)value
{
    if (!hasValue1 || hasValue2)
    {
        _value1 = value;
        hasValue1 = true;
    }
    
    else
    {
         _value2 = value;
        hasValue2 = true;
    }
}

-(Boolean)isOperationComplete
{
    return (hasValue1 && hasValue2  && ![_operation isEqualToString:@""]);
}

-(void) operate
{
    if ([_operation isEqualToString:@"+"])
    {
        _result = _value1 + _value2;
    }
    
    else if ([_operation isEqualToString:@"-"])
    {
       _result =  _value1 - _value2;
    }
    [self clearValues];
}

@end
