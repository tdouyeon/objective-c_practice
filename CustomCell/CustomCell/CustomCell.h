//
//  CustomCell.h
//  CustomCell
//
//  Created by 이성재 on 2017. 6. 10..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *amountLabel;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end
