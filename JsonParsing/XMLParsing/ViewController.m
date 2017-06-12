//
//  ViewController.m
//  XMLParsing
//
//  Created by 이성재 on 2017. 6. 11..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"
#import "WeatherCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSError *err;
    dataList = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.json"]] options:NSJSONReadingAllowFragments error:&err];
    local = [[dataList objectForKey:@"weatherinfo"] objectForKey:@"local"];
    NSLog(@"%@", local);
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return local.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WeatherCell * cell = [tableView dequeueReusableCellWithIdentifier:@"hello"];
    
    NSDictionary *dict = [local objectAtIndex:indexPath.row];
    
    cell.countryLabel.text = [dict objectForKey:@"country"];
    cell.weatherLabel.text = [dict objectForKey:@"weather"];
    cell.temperatureLabel.text = [dict objectForKey:@"temperature"];

    NSString *weatherStr = [dict objectForKey:@"weather"];
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
    }
    else if ([weatherStr isEqualToString:@"비"]) {
        cell.imageView.image = [UIImage imageNamed:@"rainy.png"];
    }
    else if ([weatherStr isEqualToString:@"흐림"]) {
        cell.imageView.image = [UIImage imageNamed:@"cloudy.png"];
    }
    else if ([weatherStr isEqualToString:@"눈"]) {
        cell.imageView.image = [UIImage imageNamed:@"snow.png"];
    }
    else if ([weatherStr isEqualToString:@"우박"]) {
        cell.imageView.image = [UIImage imageNamed:@"blizzard.png"];
    }

    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
