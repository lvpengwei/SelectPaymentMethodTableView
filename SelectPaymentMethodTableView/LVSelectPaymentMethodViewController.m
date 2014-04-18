//
//  LVSelectPaymentMethodViewController.m
//  SelectPaymentMethodTableView
//
//  Created by lvpw on 14-4-17.
//  Copyright (c) 2014年 com.lvpw. All rights reserved.
//

#import "LVSelectPaymentMethodViewController.h"

#import "LVPaymentHeaderView.h"
#import "LVNormalePaymentInputTypeTableViewCell.h"
#import "LVMultiPaymentTypeTableViewCell.h"

#define LVPaymentHeaderViewIdentifier @"LVPaymentHeaderViewIdentifier"
#define LVMultiPaymentTypeTableViewCellIdentifier @"LVMultiPaymentTypeTableViewCellIdentifier"
#define LVNormalePaymentInputTypeTableViewCellIdentifier @"LVNormalePaymentInputTypeTableViewCellIdentifier"

@interface LVSelectPaymentMethodViewController () <LVPaymentHeaderViewDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableDictionary *sectionData;

@end

@implementation LVSelectPaymentMethodViewController

#pragma mark - LVPaymentHeaderViewDelegate

- (void)lvPaymentHeaderViewDidSelected:(LVPaymentHeaderView *)lvPaymentHeaderView
{
    int section = 0;
    for (int i = 0; i < self.tableView.numberOfSections; i++) {
        if ([[self.tableView headerViewForSection:i] isEqual:lvPaymentHeaderView]) {
            section = i;
            if ([self.sectionData[[NSNumber numberWithInt:i]] integerValue] == 1) {
                self.sectionData[[NSNumber numberWithInt:i]] = @0;
            } else {
                self.sectionData[[NSNumber numberWithInt:i]] = @1;
            }
        } else {
            self.sectionData[[NSNumber numberWithInt:i]] = @0;
        }
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:i]
                      withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 2) {
        return 136;
    } else {
        return 90;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 29;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    LVPaymentHeaderView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:LVPaymentHeaderViewIdentifier];
    switch (section) {
        case 0:
        {
            headerView.paymentMethodLabel.text = @"支付宝";
        }
            break;
        case 1:
        {
            headerView.paymentMethodLabel.text = @"银联";
        }
            break;
        case 2:
        {
            headerView.paymentMethodLabel.text = @"爱心消费";
        }
            break;
        default:
            break;
    }
    headerView.delegate = self;
    return headerView;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionData.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.sectionData[[NSNumber numberWithInt:section]] integerValue];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if (indexPath.section == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:LVMultiPaymentTypeTableViewCellIdentifier forIndexPath:indexPath];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:LVNormalePaymentInputTypeTableViewCellIdentifier forIndexPath:indexPath];
    }
    
    [UIView animateWithDuration:0.3 animations:^{
        cell.contentView.alpha = 1;
    }];
    
    return cell;
}

#pragma mark - set up

- (void)setupSectionData
{
    self.sectionData = [NSMutableDictionary dictionaryWithDictionary:@{@0: @0, @1 : @0, @2 : @0}];
}

- (void)setupTableView
{
    [self.tableView registerNib:[UINib nibWithNibName:@"LVMultiPaymentTypeTableViewCell" bundle:nil] forCellReuseIdentifier:LVMultiPaymentTypeTableViewCellIdentifier];
    [self.tableView registerNib:[UINib nibWithNibName:@"LVNormalePaymentInputTypeTableViewCell" bundle:nil] forCellReuseIdentifier:LVNormalePaymentInputTypeTableViewCellIdentifier];
    [self.tableView registerNib:[UINib nibWithNibName:@"LVPaymentHeaderView" bundle:nil] forHeaderFooterViewReuseIdentifier:LVPaymentHeaderViewIdentifier];
}

#pragma mark - Life Cycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setupSectionData];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupTableView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
