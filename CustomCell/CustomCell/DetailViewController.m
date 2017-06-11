//
//  DetailViewController.m
//  CustomCell
//
//  Created by 이성재 on 2017. 6. 9..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize nameLabel, valueLabel, amountLabel, imgView, detailData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@", detailData);
    nameLabel.text = [detailData objectForKey:@"name"];
    valueLabel.text = [detailData objectForKey:@"value"];
    amountLabel.text = [detailData objectForKey:@"amount"];
    imgView.image = [UIImage imageNamed:[detailData objectForKey:@"image"]];
    
    imgView.layer.cornerRadius = 25.0;
    imgView.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
