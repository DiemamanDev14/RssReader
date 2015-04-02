//
//  ViewController.m
//  Ejparser
//
//  Created by Andrie on 30.03.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end


@implementation ViewController

@synthesize infoText;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
   
    CGRect frame = CGRectMake(100, 100, 200, 50);
    UILabel *wd = [[UILabel alloc] initWithFrame:frame];
    wd.text = self.infoText;
    [self.view addSubview:wd];
 
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 20, 20)];
    imgView.image = [UIImage imageNamed:@"apple_ex.png"];
    [self.view addSubview:imgView];
    
    
}



@end
