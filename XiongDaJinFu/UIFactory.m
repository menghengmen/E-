//
//  UIFactory.m
//  Doubo
//
//  Created by Blin on 15/10/22.
//  Copyright © 2015年 Blin. All rights reserved.
//

#import "UIFactory.h"

@implementation UIFactory
//普通btn
+ (UIButton *)newButtonWithType:(UIButtonType)type normalImage:(NSString *)imageName  buttonTitle:(NSString*)btnTitle target:(id)target action:(SEL)action{
    // TODO: implement
    UIButton * btn = [UIButton buttonWithType:type];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    [btn setTitle:btnTitle forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
//带Frame的button
+ (UIButton *)newButtonWithType:(UIButtonType)type  frame:(CGRect)frame normalImage:(NSString *)imageName  buttonTitle:(NSString*)btnTitle target:(id)target action:(SEL)action{
    UIButton * btn = [UIButton buttonWithType:type];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    [btn setTitle:btnTitle forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:frame];
    return btn;

}
//颜色转image
+ (UIImage *)createImageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}
//纯色btn
+ (UIButton *)newButtonWithType:(UIButtonType)type target:(id)target action:(SEL)action{
    // TODO: implement
    UIButton * btn = [UIButton buttonWithType:type];
    //[btn setBackgroundImage:[UIFactory createImageWithColor:[UIColor colorWithRed:0 green:255 blue:0 alpha:1]] forState:UIControlStateNormal];
   // [btn setBackgroundImage:[UIFactory createImageWithColor:[UIColor colorWithRed:0 green:255 blue:255 alpha:1]] forState:UIControlStateHighlighted];
   // [btn.layer setCornerRadius:10];
    [btn.layer setMasksToBounds:YES];
    
    [btn setTitle:@"注册" forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

//uiimageview
+(UIImageView *)newImageViewWithName:(NSString *)imageName
{
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    return imageView;
}

//uitextfield
+ (UITextField *)newTextFieldWithStyle:(UITextBorderStyle)style delegate:(id<UITextFieldDelegate>)delegate{
    UITextField * tf = [[UITextField alloc] initWithFrame:CGRectZero];
    [tf setBorderStyle:style];
    tf.delegate = delegate;
    return tf;
}

//动态label
+(UILabel *)newDyLabelWithText:(NSString *)text font:(UIFont *)font width:(CGFloat)width
{
    UILabel * label = [UILabel new];
    label.text = text;
    label.font = font;
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSDictionary *attributes = @{NSFontAttributeName : label.font,
                                 NSParagraphStyleAttributeName: paragraph};
    
    CGRect box = [label.text
                  boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                  options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading)
                  attributes:attributes context:nil];
    
    label.frame = box;
    return label;
}

+(UILabel *)newlabelWithTextColor:(UIColor*)color withTitle:(NSString*)title fontSize:(CGFloat)theSize
{
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectZero];
    [label setTextColor:color];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setFont:[UIFont systemFontOfSize:theSize]];
    label.text = title;
    return label;
}
//拉伸图片
+ (UIImage *)resizeImage:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    CGFloat imageW = image.size.width * 0.5;
    CGFloat imageH = image.size.height * 0.5;
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH, imageW, imageH, imageW) resizingMode:UIImageResizingModeTile];
}

+ (UISlider *)newSlider
{
    UISlider * slider = [UISlider new];
    [slider setThumbImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    return slider;
}

@end
