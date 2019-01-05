//
//  AlphaInputValidator.h
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN


/**
 zs20190105 验证输入的内容是否只有字母 策略模式中扮演的角色：具体策略
 */
@interface AlphaInputValidator : InputValidator

- (BOOL)validateInput:(UITextField*)input error:(NSError **)error;


@end

NS_ASSUME_NONNULL_END
