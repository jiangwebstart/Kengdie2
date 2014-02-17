//
//  ArticleManager.m
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import "ArticleManager.h"

@implementation ArticleManager
static ArticleManager *sharedManager = nil;

+ (ArticleManager *) sharedManager {
    @synchronized(self) {
        if (sharedManager == nil) {
            sharedManager = [[self alloc] init];
        }
    }
    return sharedManager;
}

+ (id) allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (sharedManager == nil) {
            sharedManager = [super allocWithZone:zone];
            return sharedManager;
        }
    }
    return nil;
}

- (int) count {
    return 24;
}

- (Article *) articleWithNumber:(int)number {
    NSString *contentPath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%d", number] ofType:@"txt"];
    NSString *content = [[NSString alloc] initWithContentsOfFile:contentPath encoding:NSUTF8StringEncoding error:nil];
    NSString * imagePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%d", number] ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    Article *article = [[Article alloc]initWithNumber:number content:content image:image];
    return article;
}

@end
