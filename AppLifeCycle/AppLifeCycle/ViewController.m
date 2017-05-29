//
//  ViewController.m
//  AppLifeCycle
//
//  Created by 이성재 on 2017. 5. 28..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear");
    // 여러번 호출
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear");
    // 다른 세그로 넘어 갈 때
}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
