//
//  CACalculadoraModel.h
//  Calculadora
//
//  Created by Juan Camilo Rada on 6/5/14.
//  Copyright (c) 2014 Juan Camilo Rada. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CACalculadoraModel : NSObject
- (void) clearValues;
-(void) clearAllValues;
- (void) setOperand:(int) value;
-(Boolean) isOperationComplete;
-(void) operate;


@property (nonatomic, readonly) int value1;
@property (nonatomic, readonly) int value2;
@property (nonatomic, readonly) int result;
@property (weak, nonatomic) NSString* operation;

@end
