//
//  NumericInputValidator.h
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN


/**
 zs20190105 数字输入框的验证类 策略模式中扮演的角色：具体策略
 */
@interface NumericInputValidator : InputValidator


/*zs20190105
 * NumericInputValidator 子类化抽象基类InputValidator，并重写其validateInput：error:方法。
 * 这里重新声明了这个方法，以强调这个子类实现或重写了什么。这不是必须的，但这是个好习惯。
 */
- (BOOL)validateInput:(UITextField*)input error:(NSError **)error;




@end

NS_ASSUME_NONNULL_END
