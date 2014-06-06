//
//  CAViewController.m
//  Calculadora
//
//  Created by Juan Camilo Rada on 6/4/14.
//  Copyright (c) 2014 Juan Camilo Rada. All rights reserved.
//

#import "CAViewController.h"
#import "CACalculadoraModel.h"

@interface CAViewController ()
@end

@implementation CAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.model = [[CACalculadoraModel alloc] init];
    
    [self updateView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)updateView
{
    _numbersField.text = @"";
    _resulTextField.text = [@(_model.result) stringValue];
    _operationTextField.text = _model.operation;
}

- (void)operate {
    [_model operate];
    _resulTextField.text =  [@(_model.result) stringValue];
    _operationTextField.text = _model.operation;
    [_model setOperand:_model.result];
}


- (IBAction)numberButtonDown:(id)sender {
    UIButton *button = (UIButton *)sender;
    NSString* buttonText = button.titleLabel.text;

    NSString* newString = [_numbersField.text stringByAppendingString:buttonText];
    _numbersField.text = newString;
    
}



- (IBAction)operationButtonDown:(id)sender {
    UIButton *button = (UIButton *)sender;
    NSString* buttonText = button.titleLabel.text;
    
    if (![_numbersField.text isEqualToString:@""])
    {
        int number= [_numbersField.text intValue];
        [_model setOperand:number];
        _numbersField.text =  @"";
    }
    
    if ([_model isOperationComplete])
    {
        [self operate];
    }
    
    _model.operation = buttonText;
    [self updateView];
}

- (IBAction)resultButtonDown:(id)sender {
    int number= [_numbersField.text intValue];
    [_model setOperand:number];
    
    if ([_model isOperationComplete])
    {
        [self operate];
    }
    
    [self updateView];
}


- (IBAction)clearButtonDown:(id)sender {
    [_model clearAllValues];
    [self updateView];
}

- (IBAction)removeButtonDown:(id)sender {
    if (_numbersField.text.length > 0)
    {
        NSString* newString = [_numbersField.text substringToIndex:[_numbersField.text length] - 1];
        _numbersField.text = newString;
    }
}

@end
