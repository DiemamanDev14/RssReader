//
//  MystudioTableViewController.h
//  Ejparser
//
//  Created by Andrie on 30.03.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MystudioTableViewController : UITableViewController  <UITableViewDelegate,UITableViewDataSource> {
    NSArray *imageData;
}

//-(void)getImage;

@property(nonatomic, retain) NSArray *imageData;




@end
