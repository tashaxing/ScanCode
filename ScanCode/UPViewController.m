//
//  ViewController.m
//  ScanCode
//
//  Created by yxhe on 16/6/2.
//  Copyright © 2016年 yxhe. All rights reserved.
//

#import "UPViewController.h"
#import "CaptureViewController.h"

@interface UPViewController ()
@end

@implementation UPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView
{
    [super loadView];
    
//    self.navigationController.navigationBar.hidden =YES;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *scanButton = [UIButton buttonWithType:UIButtonTypeCustom];
    scanButton.frame = CGRectMake(160, 300, 60, 30);
    [scanButton setTitle:@"scan" forState:UIControlStateNormal];
    [scanButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [scanButton setTitleColor:[UIColor greenColor] forState:UIControlEventTouchDown];
    [scanButton addTarget:self action:@selector(ScanButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:scanButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ScanButtonClicked
{
    NSLog(@"start scan!");
    CaptureViewController *captureViewController = [[CaptureViewController alloc] init];
    
    //navigate to the scan page
    [self.navigationController pushViewController:captureViewController animated:YES];
}

@end
