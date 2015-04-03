//
//  MyCell.h
//  Ejparser
//
//  Created by Andrie on 30.03.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyCell : UITableViewCell   {

    

}

@property (strong, nonatomic)  UILabel *myLabel;
@property (strong, nonatomic) UIImageView *imageView;

- (void)loadImagesFromUrl:(NSInteger )i;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withIndexPath:(NSInteger )i;
//- (NSString*)giveMeLabelText:(NSInteger)i;
@end
