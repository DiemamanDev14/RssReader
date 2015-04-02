//
//  ImageViewForCell.m
//  Ejparser
//
//  Created by DK on 01.04.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import "ImageViewForCell.h"


@implementation ImageViewForCell


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    dot =[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    dot.image=[UIImage imageNamed:@"apple_ex.png"];
        
}


@end
