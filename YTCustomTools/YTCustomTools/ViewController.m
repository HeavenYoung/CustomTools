//
//  ViewController.m
//  YTCustomTools
//
//  Created by Heaven on 16/8/24.
//  Copyright © 2016年 Heaven. All rights reserved.
//

#import "ViewController.h"
#import "FPSLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FPSLabel *label = [[FPSLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];

    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
