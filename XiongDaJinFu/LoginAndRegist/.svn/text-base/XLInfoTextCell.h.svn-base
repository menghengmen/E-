//
//  YJPersonInfoCell.h
//  WalkTogether
//
//  Created by boding on 15/5/12.
//  Copyright (c) 2015年 GYJ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XLInfoTextCell;
@protocol XLInfoTextCellDelegate <NSObject>

@optional
- (void)personInfoChange:(NSString *)change andCell:(XLInfoTextCell *)cell;
- (void)personInfoBeginEdit:(UITextField *)textField andCell:(XLInfoTextCell *)cell;
@end

@interface XLInfoTextCell : UITableViewCell

@property (nonatomic, strong) UITextField *text;
@property (nonatomic, weak) UILabel *name;

@property (nonatomic, weak) id<XLInfoTextCellDelegate> delegate;

+ (instancetype)infoText:(UITableView *)tableView;

@end
