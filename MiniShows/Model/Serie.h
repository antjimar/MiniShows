//
//  Serie.h
//  MiniShows
//
//  Created by Araceli Ruiz Ruiz on 17/02/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Serie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *slogan;
@property (nonatomic, strong) NSString *counter;
@property (nonatomic, strong) NSString *generalInfo;
@property (nonatomic, strong) NSString *overView;
@property (nonatomic, strong) UIImage *serieImage;

- (instancetype) initWithTitle : (NSString*) title
                         slogan: (NSString*) slogan
                        counter: (NSString*) counter
                    generalInfo: (NSString*) generalInfo
                       overView: (NSString*) overView
                          image:(UIImage*) serieImage;


@end
