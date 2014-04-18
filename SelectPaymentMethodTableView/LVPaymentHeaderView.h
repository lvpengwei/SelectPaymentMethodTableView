//
//  LVPaymentHeaderView.h
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-17.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LVPaymentHeaderView;

@protocol LVPaymentHeaderViewDelegate <NSObject>

- (void)lvPaymentHeaderViewDidSelected:(LVPaymentHeaderView *)lvPaymentHeaderView;

@end

@interface LVPaymentHeaderView : UITableViewHeaderFooterView

@property (weak, nonatomic) id<LVPaymentHeaderViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *paymentMethodLabel;

@end
