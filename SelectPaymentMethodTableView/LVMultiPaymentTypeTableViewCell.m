//
//  LVMultiPaymentTypeTableViewCell.m
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-17.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import "LVMultiPaymentTypeTableViewCell.h"

#define leftButtonTag 100
#define rightButtonTag 101

@implementation LVMultiPaymentTypeTableViewCell
{
    MultiPaymentType _type;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)paymentTypeAction:(UIButton *)sender
{
    if (sender.tag == 100) {
        _type = AiXinShangWuKa;
    } else {
        _type = HaoFuTong;
    }
}

- (MultiPaymentType)getSelectType
{
    if (_type) {
        return _type;
    } else {
        return AiXinShangWuKa; // 默认爱心商务卡
    }
}

@end
