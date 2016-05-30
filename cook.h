//
//  cook.h
//  吃饼干TableView2016-5-30
//
//  Created by 十大大 on 16/5/30.
//  Copyright © 2016年 Y. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface cook : NSObject
@property(nonatomic,copy)NSString* number;
@property(nonatomic,copy)NSString* desc;
@property(nonatomic,copy)NSString* title;
+(instancetype)cookWithDict:(NSDictionary*)Dict;
-(instancetype)initWithDict:(NSDictionary*)Dict;
@end
