//
//  SettingsViewController.m
//  MiniShows
//
//  Created by ANTONIO JIMÉNEZ MARTÍNEZ on 17/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()


@property (strong, nonatomic) IBOutletCollection(UISwitch) NSArray *mySwitchs;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    for (UISwitch *mySwitch in self.mySwitchs) {
        mySwitch.transform = CGAffineTransformMakeScale(0.60, 0.60);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
