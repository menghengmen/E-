//
//  MHPasswordChangeViewController.m
//  XiongDaJinFu
//
//  Created by 哈哈 on 2017/7/12.
//  Copyright © 2017年 digirun. All rights reserved.
//

#import "MHPasswordChangeViewController.h"
#import "XLInfoTextCell.h"
#import "UIViewController+HUD.h"
@interface MHPasswordChangeViewController ()<XLInfoTextCellDelegate,UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) UITableView *table;

@end

@implementation MHPasswordChangeViewController
-(UITableView *)table {
    if (!_table) {
        _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height+200) style:UITableViewStylePlain];
        _table.delegate = self;
        _table.dataSource = self;
        _table.rowHeight = 100*SCREENHEIGHT/1334;
        _table.tableFooterView = [[UIView alloc] init];
        _table.sectionHeaderHeight = 225;
        
    }
    return _table;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [self setUpNewNai:nil Title:@"修改密码"];
    [self setUpUI];
}
-(void)setUpUI{

    [self.view addSubview:self.table];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XLInfoTextCell *cell = [XLInfoTextCell  infoText:tableView];
    cell.text.textAlignment = NSTextAlignmentLeft;
    cell.name.textAlignment = NSTextAlignmentCenter;
    cell.delegate = self;
    switch (indexPath.row) {
        case 0:
            cell.name.text = @"旧密码";
            cell.text.placeholder = @"输入旧密码";
            cell.text.tag = 10086;
            break;
        case 1:
            cell.name.text = @"新密码";
            cell.text.placeholder = @"6-14数字符号组合";
            cell.text.tag = 10087;

            break;
        case 2:
            cell.name.text = @"确认密码";
            cell.text.placeholder = @"再次确认密码";
            cell.text.tag = 10088;

            break;
            
        case 3:
            cell.name.backgroundColor = [UIColor colorWithHexString:@"#0183dc"];
            cell.name.text = @"提交";
            cell.name.frame = CGRectMake(0, 0, SCREENWIDTH, cell.frame.size.height);
            cell.name.userInteractionEnabled = YES;
            cell.name.layer.cornerRadius = 5;
            cell.name.clipsToBounds = YES;
            [cell.name addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changePassword)]];
            break;

       
        
        
        default:
            break;
    }
   
    
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


}
-(void)changePassword{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];

    UITextField  * OLD =    [self.view viewWithTag:10086];
    UITextField  * XIN =    [self.view viewWithTag:10087];
    UITextField  * ConfirmXin =    [self.view viewWithTag:10088];
    if ([OLD.text isEqualToString:@""]||[XIN.text isEqualToString:@""]||[ConfirmXin.text isEqualToString:@""]) {
        [self showHint:@"请把信息填写完整"];
        return;
    }
    if (![ConfirmXin.text isEqualToString:XIN.text ]) {
        [self showHint:@"两次密码输入不一致"];
        return;
    }
   
    NSDictionary  * dict = @{@"uiAccount":[[XDCommonTool readDicFromUserDefaultWithKey:USER_INFO].firstObject objectForKey:@"uiAccount"],@"uiPwdOld":OLD.text,@"loginToken":[[XDCommonTool readDicFromUserDefaultWithKey:USER_INFO].firstObject objectForKey:@"loginToken"],@"uiPwdNew":XIN.text};
    
   [[NetworkClient sharedClient] GET:URL_PASSWORDCHANGE dict:dict succeed:^(id data) {
        NSLog(@"%@",data);
       NSLog(@"%@",data);
       NSArray  * dataArr = (NSArray*)data;
       NSDictionary*dict = dataArr.firstObject;
       if ([[dict objectForKey:@"pwdStatus"] integerValue]==0) {
           [self showHint:@"密码更改成功"];
           
       }else{
       
           [self showHint:@"密码更改失败"];

       }
       [MBProgressHUD hideHUDForView:self.view animated:YES];
       [self clearMessage];
   
   } failure:^(NSError *error) {
        NSLog(@"%@",error);
       [MBProgressHUD showHUDAddedTo:self.view animated:YES];
       [self clearMessage];

    }];
    





}
-(void)clearMessage{

    UITextField  * OLD =    [self.view viewWithTag:10086];
    UITextField  * XIN =    [self.view viewWithTag:10087];
    UITextField  * ConfirmXin =    [self.view viewWithTag:10088];
    OLD.text = @"";
    XIN.text = @"";
    ConfirmXin.text = @"";

}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
