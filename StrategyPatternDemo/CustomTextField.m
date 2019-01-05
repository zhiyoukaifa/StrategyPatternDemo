//
//  CustomTextField.m
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField


/**zs20190105
 CustomTextField无需知道使用的是什么类型的InputValidator以及算法的任何细节，这个就是这个模式的好处。因此在将来如果添加了新的InputValidator,
 CustomTextField对象将会以同样的方式使用它。
 */
- (BOOL)validate
{
    NSError *error = nil;
    BOOL result = [_inputValidator validateInput:self error:&error];
    if (!result) {
        NSLog(@"验证失败 给出提示信息 %@",error.userInfo);
    }
    return result;
}

@end
