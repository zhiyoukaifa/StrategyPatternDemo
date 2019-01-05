//
//  InputValidator.m
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

//zs20190105 需要子类重写
- (BOOL)validateInput:(UITextField*)input error:(NSError **)error
{
    if (error) {
        *error = nil;
    }
    return NO;
}

//为什么不用NSString作为参数呢？那么策略对象中的动作就是单向的。就是说，验证器只能检查，然后返回结果，而不能修改原始值。使用UITextField型的输入参数，就可以两全其美。验证器可以选择修改文本框的原始值，或者只检查不修改。







@end
