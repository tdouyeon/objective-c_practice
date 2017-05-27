//
//  ViewController.h
//  DigitalFrame
//
//  Created by 이성재 on 2017. 5. 27..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UILabel* label;
@property (nonatomic, strong) IBOutlet UIButton* button;
@property (nonatomic, strong) IBOutlet UISlider* slider;

-(IBAction)toggleAction:(id)sender;
-(IBAction)changeSpeedAction:(id)sender;



@end

