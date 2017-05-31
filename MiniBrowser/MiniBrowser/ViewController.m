//
//  ViewController.m
//  MiniBrowser
//
//  Created by 이성재 on 2017. 5. 29..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tfUrl, scBookmark, wvMain, activityIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * urlString = @"http://www.facebook.com";
    [wvMain loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    tfUrl.text = urlString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSString *urlString = textField.text;
    
    if (![urlString hasPrefix:@"http"]) {
        urlString = [[NSString stringWithFormat:@"http://%@", urlString ] lowercaseString];
    }
    
    [wvMain loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicatorView startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicatorView stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)bookmarkValueChanged:(id)sender {
    NSString *bookmarkURL = [scBookmark titleForSegmentAtIndex:scBookmark.selectedSegmentIndex];
    NSString *urlString = [[NSString stringWithFormat:@"http://www.%@.com", bookmarkURL] lowercaseString];
    [wvMain loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    tfUrl.text = urlString;
}

@end
