//
//  ViewController.m
//  MiniShows
//
//  Created by ANTONIO JIMÉNEZ MARTÍNEZ on 17/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"
#import "Serie.h"
#import "ShowTableViewCell.h"

NSString *const kCustomCell = @"kCustomCell";


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *homeTableView;
@property (nonatomic, strong) NSMutableArray *series;
@property (nonatomic, strong) UINavigationController *navVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.series = [NSMutableArray array];
    [self createModel];
    self.homeTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.homeTableView.dataSource = self;
    self.homeTableView.delegate = self;
    [self.homeTableView registerNib:[UINib nibWithNibName:@"showCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:kCustomCell];
    [self.view addSubview:self.homeTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.series.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
      ShowTableViewCell *myCell = [self.homeTableView dequeueReusableCellWithIdentifier:kCustomCell forIndexPath:indexPath];
    
    
    Serie *serie = self.series[indexPath.row];
    myCell.serieTitle.text = serie.title;
    myCell.serieSlogan.text = serie.slogan;
    myCell.serieCounter.text = serie.counter;
    myCell.serieImage.image = serie.serieImage;
    
   
    
   
    
    return myCell;
}

- (void)createModel{
    
    Serie *suits = [[Serie alloc] initWithTitle:@"Suits" slogan:@"slogan" counter:@"counter" generalInfo:@"Info" overView:@"overView" image:[UIImage imageNamed:@"Wallpaper_Wizard"]];
    

    [self.series addObject:suits];
    
    Serie *gameOfThrones = [[Serie alloc] initWithTitle:@"GameOfThrones" slogan:@"slogan" counter:@"counter" generalInfo:@"Info" overView:@"overView" image:[UIImage imageNamed:@"Game_of_Thrones"]];
    [self.series addObject:gameOfThrones];
    
    Serie *houseOfCards = [[Serie alloc] initWithTitle:@"HouseOfCards" slogan:@"slogan" counter:@"counter" generalInfo:@"Info" overView:@"overView" image:[UIImage imageNamed:@"House_of_Cards"]];
    [self.series addObject:houseOfCards];
    
    Serie *modernFamily = [[Serie alloc] initWithTitle:@"ModernFamily" slogan:@"slogan" counter:@"counter" generalInfo:@"Info" overView:@"overView" image:[UIImage imageNamed:@"modern_family"]];
    [self.series addObject:modernFamily];

}

- (IBAction)settingButtonPressed:(UIBarButtonItem *)sender {
    SettingsViewController *settingsVC = [[SettingsViewController alloc] init];
    self.navVC = [[UINavigationController alloc] initWithRootViewController:settingsVC];
    UIBarButtonItem *closeButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(closeSettings)];
    [settingsVC.navigationItem setLeftBarButtonItem:closeButton];
    
    
    [self presentViewController:self.navVC animated:YES completion:nil];
}

- (void)closeSettings {
    [self.navVC dismissViewControllerAnimated:YES completion:nil];
}



@end
