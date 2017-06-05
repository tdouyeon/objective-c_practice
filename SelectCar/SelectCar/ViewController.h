//
//  ViewController.h
//  SelectCar
//
//  Created by 이성재 on 2017. 6. 4..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>{
    NSArray *companyName;
    
    NSArray *tesla;
    NSArray *teslaImageNames;
    NSArray *lamborghini;
    NSArray *lamborghiniImageNames;
    NSArray *porsche;
    NSArray *porscheImageNamses;
    
    NSArray *carModel;
    NSArray *carModelImage;
    
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

