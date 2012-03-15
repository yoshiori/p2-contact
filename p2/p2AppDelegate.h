//
//  p2AppDelegate.h
//  p2
//
//  Created by  on 11/07/24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PelNameTableView.h"

@interface p2AppDelegate : NSObject <UIApplicationDelegate>{
    UIWindow*               window;
    UINavigationController* navigationController;
    PelNameTableView*  viewController;
}

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
