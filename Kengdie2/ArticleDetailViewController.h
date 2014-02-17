//
//  ArticleDetailViewController.h
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"
#import "GADBannerView.h"

@interface ArticleDetailViewController : UIViewController
@property (nonatomic, strong) Article *article;
@property (weak, nonatomic) IBOutlet UILabel *articleTitle;
@property (weak, nonatomic) IBOutlet UIImageView *articleImage;
@property (weak, nonatomic) IBOutlet UITextView *articleContent;
@property (strong, nonatomic) GADBannerView *gadBannerView;
@end
