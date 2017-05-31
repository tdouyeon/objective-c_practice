//
//  ViewController.h
//  MiniBrowser
//
//  Created by 이성재 on 2017. 5. 29..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UISegmentedControl *scBookmark;
@property (strong, nonatomic) IBOutlet UITextField *tfUrl;
@property (strong, nonatomic) IBOutlet UIWebView *wvMain;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
- (IBAction)bookmarkValueChanged:(id)sender;

@end

