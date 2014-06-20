//
//  ALIENViewController.m
//  LanguageSwitch
//
//  Created by AlienLi on 14-5-6.
//  Copyright (c) 2014年 AlienLi. All rights reserved.
//

#import "ALIENViewController.h"

@interface ALIENViewController ()

@end

@implementation ALIENViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 40, 250, 60);
    label.text = NSLocalizedString(@"key", @"");
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
