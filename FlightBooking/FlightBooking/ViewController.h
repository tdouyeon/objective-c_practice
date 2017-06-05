//
//  ViewController.h
//  FlightBooking
//
//  Created by 이성재 on 2017. 6. 2..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    NSInteger buttonTag;
}

@property (strong, nonatomic) IBOutlet UIButton *departureButton;
@property (strong, nonatomic) IBOutlet UILabel *returnDateLabel;
@property (strong, nonatomic) IBOutlet UIButton *returnDateButton;
@property (strong, nonatomic) IBOutlet UIDatePicker *selectDatePicker;
- (IBAction)showReturnDateAction:(id)sender;
- (IBAction)showDatePickerAction:(id)sender;


- (IBAction)selectDateAction:(id)sender;
@end

