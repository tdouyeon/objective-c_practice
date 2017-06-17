//
//  ViewController.h
//  ImageDownload
//
//  Created by 이성재 on 2017. 6. 15..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLSessionDownloadDelegate>{
    NSURLSessionTask *downloadTask;
}
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (strong, nonatomic) IBOutlet UIProgressView *progressView;

- (IBAction)downloadAction:(id)sender;
- (IBAction)suspendAction:(id)sender;
- (IBAction)resumeAction:(id)sender;
- (IBAction)cancelAction:(id)sender;

@end

