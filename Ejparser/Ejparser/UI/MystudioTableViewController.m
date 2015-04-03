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
//    MyCell *myCell;
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
    rectImage = CGRectMake(0, 0, 20, 20);
    
    
//    NSMutableArray *imagesArray = [[NSMutableArray alloc] init];
//    for(int i = 0; i < [image count]; i++)
//    {
//        NSData *imageData= [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[image objectAtIndex:i]]];
//        [imagesArray addObject:[UIImage imageWithData:imageData]];
//    }
    
//    
//   imagenURL=@"http://www.google.by/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRw&url=http%3A%2F%2Ffr.wikipedia.org%2Fwiki%2FFichier%3AFirefox_Old_Logo.png&ei=5OscVaTsG5LoaIjJgbgF&bvm=bv.89744112,d.d2s&psig=AFQjCNHQTtpdYLqjThq9YQ8IHKPWcW4eTg&ust=1428045149886127";
    
    
    myArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 100; i++) {
        myArray[i] = [NSString stringWithFormat:@"%i", i];
    }
    
}


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
    return 25;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *cellIdentifier = @"myCell";
    MyCell *myCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
//    if (myCell == nil) {
        myCell = [[MyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier withIndexPath:indexPath.row];
//    }

//    [myCell loadImagesFromUrl:indexPath.row] ;
//    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(180, 0, 150, 30)];
////    imgView.image = [myCell loadImagesFromUrl:indexPath.row];
//    myCell.imageView.image = imgView.image;
    NSLog(@"Cell # = %ld", indexPath.row);
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
   

//}
//- (void)showID:(NSInteger)i withLabel:(UILabel *)labelCell
//{
//    
//    NSLog(@"Cell # %li clicked!", i);
//    ViewController *detailView = [[ViewController alloc] init];
//    
//    detailView.infoText = [NSString stringWithFormat:@"%i", i];
//    [self showViewController:detailView sender:nil];
//    
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    NSLog(@"%@", [tableView cellForRowAtIndexPath:indexPath]);
////    [self showID:indexPath.row withLabel:myCell.myLabel.text];
//    
//}

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

//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    ViewController *detailView = [segue destinationViewController];
////    myCell = sender;
//    // Pass the selected object to the new view controller.
//    
////    detailView.infoText = myCell.myLabel.text;//[NSString stringWithFormat:@"%ld", [self.tableView indexPathForCell:myCell].row];
//    
//    NSLog(@"%@", detailView.infoText);
//}

}
@end
