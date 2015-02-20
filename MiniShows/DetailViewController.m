//
//  DetailViewController.m
//  MiniShows
//
//  Created by ANTONIO JIMÉNEZ MARTÍNEZ on 18/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintGreenBar;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraingTextViewHeight;
@property (weak, nonatomic) IBOutlet UITextView *firstTextView;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@property (nonatomic) CGFloat initialYScroll;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myScrollView.delegate = self;
    
    CGFloat heightText = [self getContentSize:self.firstTextView];
    self.constraingTextViewHeight.constant = heightText;
    
    self.initialYScroll = self.myScrollView.contentOffset.y;
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

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
    
//    if (scrollView.contentOffset.y > 136.0f) {
//        self.constraintGreenBar.constant = self.constraintGreenBar.constant + scrollView.contentOffset.y - 64.0f;
//    }
    
    
    
    
}

@end
