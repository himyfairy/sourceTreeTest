//
//  ViewController.m
//  sourceTreeTest
//
//  Created by QiLu on 14/09/2017.
//  Copyright © 2017 tp-link. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "QLCar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionDataTask *task = [manager dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"] cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:15.0] completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
    }];
    [task resume];
    
    QLTest *test = [[QLTest alloc] init];
    test.testName = @"daiwenjun";
    [test test];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    QLCar *car = [[QLCar alloc] init];
    car.name = @"Mercedes";
    [car run];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"ql===");
    NSLog(@"xxb===");
    
}

- (void)test {
    
}

@end
