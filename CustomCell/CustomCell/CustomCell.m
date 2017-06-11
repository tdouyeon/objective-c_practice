//
//  CustomCell.m
//  CustomCell
//
//  Created by 이성재 on 2017. 6. 10..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize imgView;

- (void)awakeFromNib {
    [super awakeFromNib];
    imgView.layer.cornerRadius = 50.0;
    imgView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
