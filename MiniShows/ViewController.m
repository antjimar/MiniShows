//
//  ViewController.m
//  MiniShows
//
//  Created by ANTONIO JIMÉNEZ MARTÍNEZ on 17/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SettingsViewController *settingsVC = [[SettingsViewController alloc] init];
    
    [self.navigationController pushViewController:settingsVC animated:YES];
}


@end
