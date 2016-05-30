//
//  cook.m
//  吃饼干TableView2016-5-30
//
//  Created by 十大大 on 16/5/30.
//  Copyright © 2016年 Y. All rights reserved.
//

#import "cook.h"

@implementation cook
+(instancetype)cookWithDict:(NSDictionary*)Dict
{
    return [[self alloc]initWithDict:Dict];
}
-(instancetype)initWithDict:(NSDictionary*)Dict
{
    if (self=[super init]) {
        self.title=Dict[@"title"];
        self.number=Dict[@"number"];
        self.desc=Dict[@"desc"];
//        [self setValuesForKeysWithDictionary:Dict];
    }
    return self;
}
@end
