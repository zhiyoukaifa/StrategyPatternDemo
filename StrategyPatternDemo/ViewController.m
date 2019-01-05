//
//  ViewController.m
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"


@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) CustomTextField *numericTextField;

@property (nonatomic, strong) CustomTextField *alphaTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view addSubview:self.numericTextField];
    [self.view addSubview:self.alphaTextField];
    
    self.numericTextField.frame = CGRectMake(50, 100, 200, 44);
    self.alphaTextField.frame = CGRectMake(50, 200, 200, 44);
    self.numericTextField.backgroundColor = [UIColor yellowColor];
    self.alphaTextField.backgroundColor = [UIColor yellowColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField*)textField validate];
    }
}

- (CustomTextField *)numericTextField
{
    if (_numericTextField == nil) {
        
        _numericTextField = [[CustomTextField alloc] init];
        _numericTextField.delegate = self;
        _numericTextField.placeholder = @"只能输入数字";
        _numericTextField.inputValidator = [[NumericInputValidator alloc] init];
    }
    return _numericTextField;
}
- (CustomTextField *)alphaTextField
{
    if (_alphaTextField == nil) {
        
        _alphaTextField = [[CustomTextField alloc] init];
        _alphaTextField.delegate = self;
        _alphaTextField.placeholder = @"只能输入字母";
        _alphaTextField.inputValidator = [[AlphaInputValidator alloc] init];
    }
    return _alphaTextField;
}
@end
