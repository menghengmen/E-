//
//  YJPersonInfoCell.m
//  WalkTogether
//
//  Created by boding on 15/5/12.
//  Copyright (c) 2015年 GYJ. All rights reserved.
//

#import "XLInfoTextCell.h"


@interface XLInfoTextCell()<UITextFieldDelegate>

@end

@implementation XLInfoTextCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)infoText:(UITableView *)tableView     
{
    static NSString *identify = @"YJPersonInfoCell";
    XLInfoTextCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[XLInfoTextCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        UITextField *text = [[UITextField alloc] initWithFrame:CGRectMake(10, 7, [UIScreen mainScreen].bounds.size.width - 30, 44)];
        [self.contentView addSubview:text];
        text.borderStyle = UITextBorderStyleRoundedRect;
        text.textAlignment = NSTextAlignmentRight;
        text.delegate =self;
        self.text = text;
    
        UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(10, 7, 100, 40)];
        [self.contentView addSubview:name];
        self.name = name;
        
        text.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 0)] ;
        text.leftView.userInteractionEnabled = NO;
        text.leftViewMode = UITextFieldViewModeAlways;
        

    }
    return self;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([self.delegate respondsToSelector:@selector(personInfoChange:andCell:)]) {
        [self.delegate personInfoChange:textField.text andCell:self];
    }
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if ([self.delegate respondsToSelector:@selector(personInfoBeginEdit:andCell:)]) {
        [self.delegate personInfoBeginEdit:textField andCell:self];
    }
}
@end
