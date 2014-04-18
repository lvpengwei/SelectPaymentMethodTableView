//
//  LVSelectPaymentMethodViewController.h
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-17.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    Zhifubao,
    Yinlian,
    Aixinshangwuka,
    Haofutong
} PaymentType;

typedef enum : NSUInteger {
    PaymentMethod,
    CardNum,
    Pwd,
} ReturnKey;

@interface LVSelectPaymentMethodViewController : UIViewController

/**
 *  获取支付方式-卡号-密码
 *  1.格式 : @{@(PaymentMethod) : @(Zhifubao), @(CardNum) : @"", @(Pwd) : @""}
 *  2.无值返回空
 *  3.需要自己去验证合法性
 *
 *  @return 返回一个字典
 */
- (NSDictionary *)getPaymentTypeAndCardNumPwd;

@end
