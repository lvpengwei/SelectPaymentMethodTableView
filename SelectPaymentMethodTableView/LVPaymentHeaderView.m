//
//  LVPaymentHeaderView.m
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-17.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import "LVPaymentHeaderView.h"

@implementation LVPaymentHeaderView

- (IBAction)selectAction:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(lvPaymentHeaderViewDidSelected:)]) {
        [self.delegate lvPaymentHeaderViewDidSelected:self];
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
