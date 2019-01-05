//
//  AlphaInputValidator.m
//  StrategyPatternDemo
//
//  Created by 张三 on 2019/1/5.
//  Copyright © 2019 e家机械. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

- (BOOL)validateInput:(UITextField*)input error:(NSError **)error
{
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"^[a-zA-Z]*$"
                                  options:NSRegularExpressionAnchorsMatchLines
                                  error:&regError];
    NSUInteger numberOfMatches = [regex
                                  numberOfMatchesInString:[input text]
                                  options:NSMatchingAnchored
                                  range:NSMakeRange(0, [[input text] length])];
    
    //zs20190105 如果没有匹配，就返回错误和NO
    if (numberOfMatches == 0) {
        
        if (error != nil) {
            
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only letters values", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description,reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:objArray forKey:keyArray];
            
            *error = [NSError
                      errorWithDomain:InputValidationErrorDomain
                      code:1002
                      userInfo:userInfo];
        }
        return NO;
    }
    
    
    return YES;
}

@end
