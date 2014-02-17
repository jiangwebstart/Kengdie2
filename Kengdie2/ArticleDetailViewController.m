//
//  ArticleDetailViewController.m
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import "ArticleDetailViewController.h"
#import "UIColor-MoreColors.h"

@interface ArticleDetailViewController ()

@end

@implementation ArticleDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
//    UILabel *customLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
//    customLab.textColor = [UIColor asparagus];
//    customLab.text = @"详情";
//    customLab.textAlignment = NSTextAlignmentCenter;
//    customLab.font = [UIFont boldSystemFontOfSize:20];
//    self.navigationItem.titleView = customLab;
//    
//    self.view.backgroundColor = [UIColor aliceBlue];
//    self.articleContent.backgroundColor = [UIColor aliceBlue];

    self.gadBannerView = [[GADBannerView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height - GAD_SIZE_320x50.height, GAD_SIZE_320x50.width, GAD_SIZE_320x50.height)];
    self.gadBannerView.adUnitID = @"a152ef410a70373";
    self.gadBannerView.rootViewController = self;
    [self.view addSubview:self.gadBannerView];
    [self.gadBannerView loadRequest:[GADRequest request]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.articleTitle.text = self.article.title;
    self.articleContent.text = self.article.content;
    self.articleImage.image = self.article.image;
}

- (void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

@end
