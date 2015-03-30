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

@interface MystudioTableViewController (){

    NSMutableArray *myArray;
    MyCell *myCell;
}

@end

@implementation MystudioTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
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
    return [myArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
        myCell.myLabel.text = [NSString stringWithFormat:@"%@", [myArray objectAtIndex:indexPath.row]];
  
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
