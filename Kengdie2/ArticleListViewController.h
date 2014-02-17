//
//  ArticleListViewController.h
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleListViewController : UIViewController <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)clickImageButton:(id)sender;

@end
