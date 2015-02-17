//
//  ShowTableViewCell.h
//  MiniShows
//
//  Created by Araceli Ruiz Ruiz on 17/02/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *serieImage;
@property (weak, nonatomic) IBOutlet UILabel *serieTitle;
@property (weak, nonatomic) IBOutlet UILabel *serieSlogan;
@property (weak, nonatomic) IBOutlet UILabel *serieCounter;

@end
