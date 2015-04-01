//
//  MyCell.m
//  Ejparser
//
//  Created by Andrie on 30.03.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import "MyCell.h"
#import "ImageViewForCell.h"


@implementation MyCell

ImageViewForCell *viewForCell;

@synthesize myLabel;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    [self.viewForBaselineLayout addSubview:viewForCell];
// Configure the view for the selected state
}

@end
