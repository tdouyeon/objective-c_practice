//
//  WeatherCell.m
//  XMLParsing
//
//  Created by 이성재 on 2017. 6. 11..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "WeatherCell.h"

@implementation WeatherCell
@synthesize countryLabel, weatherLabel, temperatureLabel, imgView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
