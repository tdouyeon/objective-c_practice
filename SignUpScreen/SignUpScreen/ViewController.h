//
//  ViewController.h
//  SignUpScreen
//
//  Created by 이성재 on 2017. 5. 28..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *tfName;
@property (strong, nonatomic) IBOutlet UITextField *tfId;
@property (strong, nonatomic) IBOutlet UITextField *tfPwd;
@property (strong, nonatomic) IBOutlet UITextField *tfTel;
@property (strong, nonatomic) IBOutlet UITextField *tfBlog;
@property (strong, nonatomic) IBOutlet UITextView *tvResult;
- (IBAction)signUpAction:(id)sender;

@end

