//
//  DetailViewController.h
//  p2
//
//  Created by  on 11/07/24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UITableViewController{
    NSDictionary *_pelData;
}


- (id)initWithDic :(NSDictionary *) pelData;
@end
