//
//  DetailViewController.m
//  p2
//
//  Created by  on 11/07/24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
- (id)initWithDic :(NSDictionary *) pelData{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        _pelData = pelData;
        [_pelData retain];
        self.title = [_pelData objectForKey:@"personaname"];
    }
    return self;
    
}
-(void)dealloc{
    [_pelData release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 8;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (0 < section && section < 7) {
        return 4;
    }else if( section == 7 ){
        return 17;
    }
    return 1;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"アルカナ";
        case 1:
            return @"主人公";
        case 2:
            return @"栄吉";
        case 3:
            return @"ギンコ";
        case 4:
            return @"舞耶";
        case 5:
            return @"淳";
        case 6:
            return @"ゆきの";
        case 7:
            return @"掛け合い";
        default:
            return @"";
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"detailCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [_pelData objectForKey:@"race"];
            break;
        case 1:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : ものまね",[_pelData objectForKey:@"t_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 説得する",[_pelData objectForKey:@"t_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 漢を語る",[_pelData objectForKey:@"t_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 目で殺す",[_pelData objectForKey:@"t_4"]];
                    break;
            }
            break;
        case 2:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 自分に酔う",[_pelData objectForKey:@"e_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 場を仕切る",[_pelData objectForKey:@"e_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 人生を語る",[_pelData objectForKey:@"e_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 歌い殺す",[_pelData objectForKey:@"e_4"]];
                    break;
            }
            break;
        case 3:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 踊る",[_pelData objectForKey:@"g_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : カンフー",[_pelData objectForKey:@"g_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 恋愛を語る",[_pelData objectForKey:@"g_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 悩殺する",[_pelData objectForKey:@"g_4"]];
                    break;
            }
            break;
        case 4:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : インタビュ",[_pelData objectForKey:@"m_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 相談にのる",[_pelData objectForKey:@"m_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 親子を語る",[_pelData objectForKey:@"m_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 褒め殺す",[_pelData objectForKey:@"m_4"]];
                    break;
            }
            break;
        case 5:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 甘える",[_pelData objectForKey:@"j_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 星占いをする",[_pelData objectForKey:@"j_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 夢を語る",[_pelData objectForKey:@"j_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 花で殺す",[_pelData objectForKey:@"j_4"]];
                    break;
            }
            break;
        case 6:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 諭す",[_pelData objectForKey:@"y_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 叱る",[_pelData objectForKey:@"y_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 拳で語る",[_pelData objectForKey:@"y_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 撮り殺す",[_pelData objectForKey:@"y_4"]];
                    break;
            }
            break;
        case 7:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　栄",[_pelData objectForKey:@"kk_1"]];
                    break;
                case 1:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　ギ",[_pelData objectForKey:@"kk_2"]];
                    break;
                case 2:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　舞",[_pelData objectForKey:@"kk_3"]];
                    break;
                case 3:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　ゆ",[_pelData objectForKey:@"kk_4"]];
                    break;
                case 4:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　淳",[_pelData objectForKey:@"kk_5"]];
                    break;
                case 5:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 栄　×　舞",[_pelData objectForKey:@"kk_6"]];
                    break;
                case 6:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 栄　×　ゆ",[_pelData objectForKey:@"kk_7"]];
                    break;
                case 7:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 栄　×　淳",[_pelData objectForKey:@"kk_8"]];
                    break;
                case 8:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : ギ　×　淳",[_pelData objectForKey:@"kk_9"]];
                    break;
                case 9:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 舞　×　ゆ",[_pelData objectForKey:@"kk_10"]];
                    break;
                case 10:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 舞　×　淳",[_pelData objectForKey:@"kk_11"]];
                    break;
                case 11:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　栄　×　ゆ",[_pelData objectForKey:@"kk_12"]];
                    break;
                case 12:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　栄　×　淳",[_pelData objectForKey:@"kk_13"]];
                    break;
                case 13:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 達　×　舞　×　淳",[_pelData objectForKey:@"kk_14"]];
                    break;
                case 14:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : 栄　×　ギ　×　舞",[_pelData objectForKey:@"kk_15"]];
                    break;
                case 15:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : ギ　×　舞　×　ゆ",[_pelData objectForKey:@"kk_16"]];
                    break;
                case 16:
                    cell.textLabel.text = [NSString stringWithFormat:@"%@ : ギ　×　舞　×　淳",[_pelData objectForKey:@"kk_17"]];
                    break;
            }
            break;
        default:
            break;
    }    
    return cell;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
