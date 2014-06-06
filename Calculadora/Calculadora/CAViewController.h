//
//  CAViewController.h
//  Calculadora
//
//  Created by Juan Camilo Rada on 6/4/14.
//  Copyright (c) 2014 Juan Camilo Rada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CACalculadoraModel.h"

@interface CAViewController : UIViewController


- (IBAction)numberButtonDown:(id)sender;
- (IBAction)operationButtonDown:(id)sender;
- (IBAction)resultButtonDown:(id)sender;
- (IBAction)clearButtonDown:(id)sender;
- (IBAction)removeButtonDown:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *numbersField;
@property (weak, nonatomic) IBOutlet UITextField *resulTextField;
@property (weak, nonatomic) IBOutlet UITextField *operationTextField;

@property (strong, nonatomic) CACalculadoraModel *model;


@end
