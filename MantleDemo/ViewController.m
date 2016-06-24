//
//  ViewController.m
//  MantleDemo
//
//  Created by 朱慧平 on 16/6/24.
//  Copyright © 2016年 Crystal. All rights reserved.
//http://blog.csdn.net/linpeng_1/article/details/50821269

#import "ViewController.h"
#import "TempObj.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dict = [[NSDictionary alloc] initWithObjects:@[@"iOS开发工程师",@"23岁",@1457097793] forKeys:@[@"name",@"age",@"birth"]];
    
    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjects:@[@"我是屎壳郎情调",@"25岁"] forKeys:@[@"name",@"age"]];
    
    int count = 3;
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:count];
    for (int i = 0 ; i<count;i++)
    {
        [array addObject:dict1];
    }
    
    NSMutableDictionary *dicts = [[NSMutableDictionary alloc] initWithDictionary:dict];
    [dicts setObject:dict1 forKey:@"model1"];
    [dicts setObject:array forKey:@"listArray"];
    
    TempObj *obj = [MTLJSONAdapter modelOfClass:[TempObj class] fromJSONDictionary:dicts error:nil];
    NSLog(@"%@",obj.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
