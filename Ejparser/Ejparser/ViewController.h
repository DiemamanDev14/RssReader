//
//  ViewController.h
//  Ejparser
//
//  Created by Andrie on 30.03.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
@private
    __weak IBOutlet UILabel *detailViewLabel;

}

@property (nonatomic, copy) NSString *infoText;

@end

