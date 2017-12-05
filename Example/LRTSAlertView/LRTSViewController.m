//
//  LRTSViewController.m
//  LRTSAlertView
//
//  Created by boilwater on 12/05/2017.
//  Copyright (c) 2017 boilwater. All rights reserved.
//

#import "LRTSViewController.h"
#import "LRTSAlertView.h"


@interface LRTSViewController ()

@property (nonatomic, strong) UIButton *showAlertView;
@property (nonatomic, strong) UIButton *disappearAlterView;
@property (nonatomic, strong) LRTSAlertView *alertView;


@end

@implementation LRTSViewController

#pragma mark - View Circle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initHierarchy];
    [self initParamters];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Init Configuration

#pragma mark -Init Hierarchy
- (void)initHierarchy {
    self.view.backgroundColor = [UIColor yellowColor];
    
    _showAlertView = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 150, 60)];
    [_showAlertView addTarget:self action:@selector(clickAlertView:) forControlEvents:UIControlEventTouchDown];
    _showAlertView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_showAlertView];
    
    _disappearAlterView = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 150, 60)];
    [_disappearAlterView addTarget:self action:@selector(disappearAlertView) forControlEvents:UIControlEventTouchDown];
    _disappearAlterView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_disappearAlterView];
}

#pragma mark -Init Paramters
- (void)initParamters {
    
}

- (void)clickAlertView:(UIButton *)sender {
    _alertView = [[LRTSAlertView alloc] init];
    _alertView.backgroundColor = [UIColor yellowColor];
    _alertView.bsView.backgroundColor = [UIColor grayColor];
    [_alertView show];

//    [_alertView disappear];
}

- (void)disappearAlertView {
    
}

@end
