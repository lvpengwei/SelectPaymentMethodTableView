//
//  LVViewController.m
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-18.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import "LVViewController.h"
#import "LVSelectPaymentMethodViewController.h"

@interface LVViewController ()

@property (nonatomic, strong) LVSelectPaymentMethodViewController *lvSelectPaymentMethodViewController;

@end

@implementation LVViewController

#pragma mark - Life Cycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    LVSelectPaymentMethodViewController *lvSelectPaymentMethodViewController = [[LVSelectPaymentMethodViewController alloc] initWithNibName:@"LVSelectPaymentMethodViewController" bundle:nil];
    self.lvSelectPaymentMethodViewController = lvSelectPaymentMethodViewController;
    [self.view addSubview:lvSelectPaymentMethodViewController.view];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
