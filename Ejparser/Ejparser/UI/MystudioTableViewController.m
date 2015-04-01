//
//  MystudioTableViewController.m
//  Ejparser
//
//  Created by Andrie on 30.03.15.
//  Copyright (c) 2015 DiemanDev. All rights reserved.
//

#import "MystudioTableViewController.h"
#import "ViewController.h"
#import "MyCell.h"
#import "ImageViewForCell.h"


@interface MystudioTableViewController (){

    NSMutableArray *myArray;
    MyCell *myCell;
    ImageViewForCell *imageInCell;
    CGRect rectImage;
}

@end

@implementation MystudioTableViewController

@synthesize imageData;

- (void)viewDidLoad {
        [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
//    NSMutableArray *imagesArray = [[NSMutableArray alloc] init];
//    for(int i = 0; i < [image count]; i++)
//    {
//        NSData *imageData= [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[image objectAtIndex:i]]];
//        [imagesArray addObject:[UIImage imageWithData:imageData]];
//    }
    
    
    
    
    
    myArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 100; i++) {
        myArray[i] = [NSString stringWithFormat:@"%i", i];
    }
    
}

//- (void)loadImagesFromPaths:(NSArray *)paths
//{
//    for (NSUInteger index=0;index<paths.count;index++)
//    {
//        NSString *path = paths[index];
//        NSURL *url = [NSURL URLWithString:path];
//        if (!url) // check url initialized
//            continue;
//        // load image data asynchronously in a separate queue with a low priority
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
//            NSData *imageData = [NSData dataWithContentsOfURL:url];
//            if (!imageData)
//                return; // if no data - return from block
//            UIImage *image = [UIImage imageWithData:imageData];
//            if (!image)
//                return; // if no image provided by url - do nothing
//            if (index==0)
//                [self.imageView0 setImage:image];
//            else if (index==1)
//                [self.imageView1 setImage:image];
//            else  //.. etc
//                });
//    }
//}
//

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [myArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    myCell.myLabel.text = [NSString stringWithFormat:@"%@", [myArray objectAtIndex:indexPath.row]];
    
//    NSString *imageUrlString = @"http://upload.wikimedia.org/wikipedia/commons/9/91/Adium.png";
//    NSURL *url = [NSURL URLWithString:imageUrlString];
    
//    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/9/91/Adium.png"]]];
//    

    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/9/91/Adium.png"]]];
    myCell.imageView.image = imgView.image;
    
    
    
    //    rectImage = CGRectMake(10, 10, 20, 5);
    //
    //    myCell.viewForBaselineLayout = [imageInCell drawRect:rectImage];
    return myCell;
}




// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
         [myArray removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
//         [tableView reloadData];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
   

}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *detailView = [segue destinationViewController];
    myCell = sender;
    // Pass the selected object to the new view controller.
    
    detailView.infoText = myCell.myLabel.text;//[NSString stringWithFormat:@"%ld", [self.tableView indexPathForCell:myCell].row];
    
    NSLog(@"%@", detailView.infoText);
}


@end
