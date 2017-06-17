//
//  ViewController.m
//  ImageDownload
//
//  Created by 이성재 on 2017. 6. 15..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, activityIndicator, progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
//    imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
//    [activityIndicator stopAnimating];
//    
//}
//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
////    NSLog(@"bytesWritten : %lli", bytesWritten);
////    NSLog(@"totalBytesWritten : %lli", totalBytesWritten);
////    NSLog(@"totalBytesExpectedToWrite : %lli", totalBytesExpectedToWrite);
//    
//    float progress = (float)totalBytesWritten / (float) totalBytesExpectedToWrite;
//    [progressView setProgress:progress animated:YES];
//    [activityIndicator startAnimating];
//}


- (IBAction)downloadAction:(id)sender {
    [progressView setProgress:0.0 animated:NO];
    NSURLSessionConfiguration * sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
//    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"]];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"] completionHandler:^(NSURL *location, NSURLResponse * response, NSError *error){
        imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
        [activityIndicator stopAnimating];
    }];
    
    [downloadTask resume];
    
}

- (IBAction)suspendAction:(id)sender {
    [downloadTask suspend];
}

- (IBAction)resumeAction:(id)sender {
    [downloadTask resume];
}

- (IBAction)cancelAction:(id)sender {
    [downloadTask cancel];
    [progressView setProgress:0.0 animated:NO];
    [activityIndicator stopAnimating];
}
@end
