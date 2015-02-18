//
//  ShowTableViewCell.m
//  MiniShows
//
//  Created by Araceli Ruiz Ruiz on 17/02/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "ShowTableViewCell.h"

@implementation ShowTableViewCell

- (void)awakeFromNib {
     self.serieImage.clipsToBounds = YES;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [self layoutIfNeeded];
    self.serieImage.layer.cornerRadius = self.serieImage.bounds.size.height/2;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
