//
//  UIFactory.h
//  Doubo
//
//  Created by Blin on 15/10/22.
//  Copyright © 2015年 Blin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIFactory : NSObject
//一般自定义btn
+ (UIButton *)newButtonWithType:(UIButtonType)type normalImage:(NSString *)imageName  buttonTitle:(NSString*)btnTitle target:(id)target action:(SEL)action;
//纯色btn
+ (UIButton *)newButtonWithType:(UIButtonType)type target:(id)target action:(SEL)action;
//带Frame的button
+ (UIButton *)newButtonWithType:(UIButtonType)type  frame:(CGRect)frame normalImage:(NSString *)imageName  buttonTitle:(NSString*)btnTitle target:(id)target action:(SEL)action;
+(UIImageView *)newImageViewWithName:(NSString *)imageName;

+ (UITextField *)newTextFieldWithStyle:(UITextBorderStyle)style delegate:(id<UITextFieldDelegate>)delegate;

+(UILabel *)newlabelWithTextColor:(UIColor*)color withTitle:(NSString*)title  fontSize:(CGFloat)theSize;
@end
