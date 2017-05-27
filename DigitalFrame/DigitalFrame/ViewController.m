//
//  ViewController.m
//  DigitalFrame
//
//  Created by 이성재 on 2017. 5. 27..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView, button, slider, label;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *cuteImages = @[[UIImage imageNamed:@"1.jpg"],
                            [UIImage imageNamed:@"2.jpg"],
                            [UIImage imageNamed:@"3.jpg"],
                            [UIImage imageNamed:@"4.jpg"],
                            [UIImage imageNamed:@"5.jpg"],
                            [UIImage imageNamed:@"6.jpg"],
                            [UIImage imageNamed:@"7.jpg"],
                            [UIImage imageNamed:@"8.jpg"],
                            [UIImage imageNamed:@"9.jpg"],
                            [UIImage imageNamed:@"10.jpg"],
                            [UIImage imageNamed:@"11.jpg"],
                            [UIImage imageNamed:@"12.jpg"],
                            [UIImage imageNamed:@"13.jpg"],
                            [UIImage imageNamed:@"14.jpg"],
                            [UIImage imageNamed:@"15.jpg"]];
    imageView.animationImages = cuteImages;
}

-(IBAction)toggleAction:(id)sender{
    if( [imageView isAnimating] ){
        [imageView stopAnimating];
        [button setTitle:@"Start" forState:UIControlStateNormal];
        
    }
    else{
        imageView.animationDuration = 15-slider.value;
        [imageView startAnimating];
        [button setTitle:@"Stop" forState:UIControlStateNormal];
    }

}

-(IBAction)changeSpeedAction:(id)sender{
    label.text = [NSString stringWithFormat:@"%.1f", slider.value];
    imageView.animationDuration = 15-slider.value;
    [imageView startAnimating];
    [button setTitle:@"Stop" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
