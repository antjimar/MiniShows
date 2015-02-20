//
//  TransitionFromTableToDetail.m
//  MiniShows
//
//  Created by ANTONIO JIMÉNEZ MARTÍNEZ on 20/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "TransitionFromTableToDetail.h"
#import "ViewController.h"
#import "DetailViewController.h"
#import "ShowTableViewCell.h"

static CGFloat const totalDuration = 2.0;


@implementation TransitionFromTableToDetail

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    if (self.operation == UINavigationControllerOperationPush) {
        [self presentAnimationWithTransitionContext:transitionContext];
        return;
    }
    
    [self dismissAnimationWithTransitionContext:transitionContext];
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return totalDuration;
}


- (void)presentAnimationWithTransitionContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    ViewController *fromViewController = (ViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    DetailViewController *toViewController = (DetailViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *contextView = [transitionContext containerView];
    [contextView addSubview:toViewController.view];
    [contextView addSubview:fromViewController.view];
    
    NSIndexPath *indexPath = fromViewController.homeTableView.indexPathForSelectedRow;
    
    ShowTableViewCell *cell = (ShowTableViewCell *)[fromViewController.homeTableView cellForRowAtIndexPath:indexPath];
    UIImageView *image = cell.serieImage;
    image.hidden = YES;
    UIImageView *imageCopy = [[UIImageView alloc] initWithImage:image.image];
    // Cambiamos el sistema de coordenadas de la imagen (de la celda a la vista del controller)
    imageCopy.frame = [fromViewController.view convertRect:image.frame fromView:cell];
    [contextView addSubview:imageCopy];
    imageCopy.clipsToBounds = YES;
    imageCopy.layer.cornerRadius = CGRectGetHeight(imageCopy.frame)/2;
    
    
    [UIView animateWithDuration:totalDuration
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         CGRect imageFrame = toViewController.imageDetail.frame;
                         imageFrame.size.width = CGRectGetWidth(fromViewController.view.frame);
                         imageFrame.origin.y += 64;
                         imageCopy.frame = imageFrame;
                         fromViewController.view.alpha = 0.0f;
                     } completion:^(BOOL finished) {
                         imageCopy.layer.cornerRadius = 0.0f;
                         [imageCopy removeFromSuperview];
                         [UIView animateWithDuration:totalDuration
                                          animations:^{
                                              toViewController.imageDetail.image = image.image;
                                              toViewController.view.alpha = 1.0f;
                                          } completion:^(BOOL finished) {
                                              [transitionContext completeTransition:YES];
                                              
                                          }];
                     }];
    
    
    
    
}

- (void)dismissAnimationWithTransitionContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    ViewController *fromViewController = (ViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    DetailViewController *toViewController = (DetailViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *contextView = [transitionContext containerView];
    [contextView addSubview:fromViewController.view];
    [contextView addSubview:toViewController.view];
    
    [UIView animateWithDuration:totalDuration
                     animations:^{
                         
                     } completion:^(BOOL finished) {
                         
                     }];

    
    
    
}

@end
