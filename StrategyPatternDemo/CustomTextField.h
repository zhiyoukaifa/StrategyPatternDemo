//
//  CustomTextField.h
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN


/**
 zs20190105 自定义输入框   策略模式中扮演的角色：用于操作策略的上下文环境 
 */
@interface CustomTextField : UITextField

@property (nonatomic, strong) InputValidator *inputValidator;

- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
