//
//  ViewController.m
//  FlightBooking
//
//  Created by 이성재 on 2017. 6. 2..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize returnDateLabel, returnDateButton, selectDatePicker, departureButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    returnDateLabel.hidden = YES;
    returnDateButton.hidden = YES;
    selectDatePicker.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    selectDatePicker.hidden = YES;
}


- (IBAction)showReturnDateAction:(id)sender {
//    if(returnDateLabel.hidden){
//        returnDateButton.hidden = NO;
//        returnDateLabel.hidden = NO;
//    }
//    else{
//        returnDateButton.hidden = YES;
//        returnDateLabel.hidden = YES;
//    }
    
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)showDatePickerAction:(id)sender {
    selectDatePicker.hidden = NO;
    buttonTag = [sender tag];
}

- (IBAction)selectDateAction:(id)sender {
//    NSDate *today = [[NSDate alloc]init];
//    NSLog(@"%@", today);
    
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-d hh:mma";
    
    NSString *dateString = [formatter stringFromDate:[sender date]];
    
    NSLog(@"%@", dateString);
    if (buttonTag == 1) {
        [departureButton setTitle:dateString forState:UIControlStateNormal];
    }
    else{
        [returnDateButton setTitle:dateString forState:UIControlStateNormal];
    }
    
}

@end
