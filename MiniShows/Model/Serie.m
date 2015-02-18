//
//  Serie.m
//  MiniShows
//
//  Created by Araceli Ruiz Ruiz on 17/02/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "Serie.h"

@implementation Serie



- (instancetype) initWithTitle : (NSString*) title
                         slogan: (NSString*) slogan
                        counter: (NSString*) counter
                    generalInfo: (NSString*) generalInfo
                       overView: (NSString*) overView
                          image:(UIImage*) serieImage{
    
    self = [super init];
    if (self ) {
        _title = title;
        _slogan = slogan;
        _counter = counter;
        _generalInfo = generalInfo;
        _overView = overView;
        _serieImage = serieImage;
    }
    return self;
    
}




@end
