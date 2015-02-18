//
//  DetailViewController.m
//  MiniShows
//
//  Created by ANTONIO JIMÉNEZ MARTÍNEZ on 18/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraingTextViewHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintTopBarGreen;
@property (weak, nonatomic) IBOutlet UITextView *firstTextView;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // + Navigation height
    self.constraintTopBarGreen.constant += 64.0f;
    
    CGFloat heightText = [self getContentSize:self.firstTextView];
    
    
    self.constraingTextViewHeight.constant = heightText;

}

-(CGFloat) getContentSize:(UITextView *) myTextView {
    UIFont * font = [UIFont fontWithName:@"Heiti SC" size:11];
    
    
    UITextView *gettingSizeTexView = [[UITextView alloc] init];
    gettingSizeTexView.font = font;
    gettingSizeTexView.text = myTextView.text;
    gettingSizeTexView.scrollEnabled = YES;
    
    CGSize maximumLabelSize = CGSizeMake(310, 9999);
    CGSize expectSize = [gettingSizeTexView sizeThatFits:maximumLabelSize];
    
    return expectSize.height;
}

@end
