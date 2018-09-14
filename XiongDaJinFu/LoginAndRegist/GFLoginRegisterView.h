//
//  GFLoginRegisterView.h
//  XiongDaJinFu
//
//  Created by 哈哈 on 2017/6/29.
//  Copyright © 2017年 digirun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFLoginRegisterView : UIView

/**
 登录选框View
 */
+ (instancetype)LoginViewFromXib;

/**
 注册选框View
 */
+ (instancetype)RegisterViewFromXib;

@property(nonatomic,copy) void(^loginByPasswordBtnClickBlock)(NSDictionary  * dict);
@property(nonatomic,copy) void(^loginBtnClickBlock)(NSDictionary  * dict);

@end
