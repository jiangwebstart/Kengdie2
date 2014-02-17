//
//  SettingsViewController.h
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SettingsViewController : UIViewController <UITableViewDelegate, MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
