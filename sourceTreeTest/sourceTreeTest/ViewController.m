//
//  ViewController.m
//  sourceTreeTest
//
//  Created by QiLu on 14/09/2017.
//  Copyright © 2017 tp-link. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"this is branch test");
    
    NSLog(@"111");
    NSLog(@"222");
    NSLog(@"333");

    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionDataTask *task = [manager dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"] cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:15.0] completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
    }];
    [task resume];
    
    NSLog(@"444");
    NSLog(@"555");
    NSLog(@"666");
    NSLog(@"777");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"a - 第二次修改");
}

- (void)test {
    
}

@end
