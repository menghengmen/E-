//
//  GFLoginRegisterView.m
//  XiongDaJinFu
//
//  Created by 哈哈 on 2017/6/29.
//  Copyright © 2017年 digirun. All rights reserved.
//

#import "GFLoginRegisterView.h"

@interface GFLoginRegisterView()
@property (weak, nonatomic) IBOutlet UIButton *memberBtn;

@property (strong, nonatomic) IBOutlet UITextField *loginByPasswordTextword;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *loginTextword;
@property (strong, nonatomic) IBOutlet UITextField *codeTexfield;

@end

@implementation GFLoginRegisterView
- (IBAction)login1:(UIButton *)sender {
   
     NSDictionary  * dict = @{@"name":self.loginByPasswordTextword.text,@"password":self.passwordTextField.text};
    if (self.loginByPasswordBtnClickBlock) {
        self.loginByPasswordBtnClickBlock(dict);
    }

}
- (IBAction)login2:(UIButton *)sender {

    NSDictionary  * dict = @{@"name":self.loginTextword.text,@"password":self.codeTexfield.text};

    if (self.loginBtnClickBlock) {
        self.loginBtnClickBlock(dict);
    }

}

+ (instancetype)LoginViewFromXib
{
    return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}
+ (instancetype)RegisterViewFromXib
{
    return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}


-(void)awakeFromNib
{
    [super awakeFromNib];
    UIImage *image = _memberBtn.currentBackgroundImage;
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    //设置button不拉伸的图片
    [_memberBtn setBackgroundImage:image forState:UIControlStateNormal];
    [_memberBtn setBackgroundImage:image forState:UIControlStateHighlighted];
}
@end
