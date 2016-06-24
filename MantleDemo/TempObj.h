//
//  TempObj.h
//  MantleDemo
//
//  Created by 朱慧平 on 16/6/24.
//  Copyright © 2016年 Crystal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>


@interface TempObj1 : MTLModel<MTLJSONSerializing>

@property (nonatomic,strong) NSString *name_a;
@property (nonatomic,strong) NSString *age_a;

@end


@interface TempObj : MTLModel<MTLJSONSerializing>

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *age;
@property (nonatomic,strong) NSDate *birth;
@property (nonatomic,strong) TempObj1 *model;
@property (nonatomic,strong) NSArray *list;

@end
