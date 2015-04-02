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
//UILabel *myLabel;
//UITableViewCell *myCell;
//UIImageView *myImage;
//ImageViewForCell *viewForCell;


@synthesize myLabel, imageView;
NSArray * arr;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withIndexPath:(NSInteger )i {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
        [myLabel setTextColor:[UIColor blackColor]];
        [myLabel setBackgroundColor:[UIColor colorWithHue:32 saturation:100 brightness:63 alpha:1]];
        [myLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:18.0f]];
        [myLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        myLabel.text = [NSString stringWithFormat:@"Cell # %li", i];
        [self.contentView addSubview:myLabel];
        //        [myCell loadImagesFromUrl];
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(180, 0, 150, 30)];
        //
        //
        //        myImage.image=[UIImage imageNamed:@"apple_ex.png"];
        //
        //        [myImage setTranslatesAutoresizingMaskIntoConstraints:NO];
        imageView.backgroundColor = [UIColor blackColor];
        //
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
            
            NSURL *myUrl = [NSURL URLWithString:@"http://milon-zoo.ru/1qwef.jpg"];
            NSData *data =[NSData dataWithContentsOfURL:myUrl];
            
            dispatch_sync(dispatch_get_main_queue(), ^{
                imageView.image = [UIImage imageWithData:data];
//                NSLog(@"Image ready!");
                
            });
        });
        [self.contentView addSubview:imageView];
    }
    
    return self;
}

- (NSString*)giveMeLabelText:(NSInteger)i {
    return my
}

- (void)loadImagesFromUrl:(NSInteger )i
{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
        
        NSURL *myUrl = [NSURL URLWithString:@"http://milon-zoo.ru/1qwef.jpg"];
        NSData *data =[NSData dataWithContentsOfURL:myUrl];
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            imageView.image = [UIImage imageWithData:data];
            NSLog(@"Image ready!");
            
        });
    });
    
}




//- (void)awakeFromNib {
//    // Initialization code
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    [self.viewForBaselineLayout addSubview:viewForCell];
//// Configure the view for the selected state
//}
@end


