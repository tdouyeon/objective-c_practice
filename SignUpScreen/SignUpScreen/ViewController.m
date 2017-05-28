//
//  ViewController.m
//  SignUpScreen
//
//  Created by 이성재 on 2017. 5. 28..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tfName, tfId, tfPwd, tfTel, tfBlog, tvResult;

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)signUpAction:(id)sender {
    tvResult.text = [NSString stringWithFormat:@"%@ 님 가입을 축하 드립니다.",tfName.text];
}
@end
