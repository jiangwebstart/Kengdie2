//
//  Article.h
//  Kengdie2
//
//  Created by johnny on 14-2-2.
//  Copyright (c) 2014年 Jiang Jian An. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Article : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) UIImage *image;

- (Article *)initWithNumber:(int)number content:(NSString *)content image:(UIImage *)image;
@end
