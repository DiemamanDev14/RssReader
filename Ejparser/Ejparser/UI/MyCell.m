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
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/9/91/Adium.png"]]];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    [self.viewForBaselineLayout addSubview:viewForCell];
// Configure the view for the selected state
}

@end
