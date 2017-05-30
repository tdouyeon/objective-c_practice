//
//  ViewController.m
//  MiniBrowser
//
//  Created by 이성재 on 2017. 5. 29..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tfUrl, scBookmark, wvMain;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [wvMain loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.facebook.com"]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
