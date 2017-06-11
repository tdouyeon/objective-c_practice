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
    
    dataList = [[NSMutableArray alloc] init];
    
    parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"]];
    parser.delegate = self;
    [parser parse];
    
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{
    NSLog(@"didStartElement : %@", elementName);
    
    if([@"local" isEqualToString: elementName]){
        detailData = [[NSMutableDictionary alloc] init];
    }
    
    elementTemp = elementName;
    
    blank = YES;
    
    NSLog(@"%@", dataList);
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if(blank && ![@"local" isEqualToString:elementTemp]){
        NSLog(@"foundCharacters : %@", string);
        [detailData setObject:string forKey:elementTemp];
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    NSLog(@"didEndElement : %@", elementName );
    if([@"local" isEqualToString:elementName]){
        [dataList addObject:detailData];
    }
    blank = NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataList.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WeatherCell * cell = [tableView dequeueReusableCellWithIdentifier:@"hello"];
    
    NSDictionary *dict = [dataList objectAtIndex:indexPath.row];
    
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
