//
//  Article.m
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import "Article.h"

@implementation Article

- (Article *)initWithNumber:(int)number content:(NSString *)content image:(UIImage *)image {
    if (self = [super init]) {
        self.title = [NSString stringWithFormat:@"第%d关", number];
        self.content = content;
        self.image = image;
    }
    return self;
}

@end
