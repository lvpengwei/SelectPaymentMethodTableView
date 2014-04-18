//
//  LVMultiPaymentTypeTableViewCell.h
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-17.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    AiXinShangWuKa, // 爱心商务卡 默认选项
    HaoFuTong // 号付通
} MultiPaymentType;

@interface LVMultiPaymentTypeTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *cardNumTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;

- (MultiPaymentType)getSelectType;

@end
