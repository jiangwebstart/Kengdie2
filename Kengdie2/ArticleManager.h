//
//  ArticleManager.h
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

@interface ArticleManager : NSObject

+ (ArticleManager *) sharedManager;

- (int) count;
- (Article *) articleWithNumber:(int)number;

@end
