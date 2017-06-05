//
//  ViewController.m
//  SelectCar
//
//  Created by 이성재 on 2017. 6. 4..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView;

- (void)viewDidLoad {
    [super viewDidLoad];
    companyName = [[NSArray alloc] initWithObjects:@"테슬라", @"람보르기니", @"포르쉐", nil];
    tesla = [[NSArray alloc] initWithObjects:@"모델S", @"모델X", nil];
    teslaImageNames = [[NSArray alloc] initWithObjects:@"model-s.jpg",@"model-x.jpg", nil];
    lamborghini = [[NSArray alloc] initWithObjects:@"aventador",@"huracan",@"veneno", nil];
    lamborghiniImageNames = [[NSArray alloc] initWithObjects:@"lamborghini-aventador.jpg",@"lamborghini-huracan.jpg",@"lamborghini-veneno.jpg", nil];
    porsche = [[NSArray alloc] initWithObjects:@"911",@"boxter", nil];
    porscheImageNamses = [[NSArray alloc] initWithObjects:@"porsche-911.jpg",@"porsche-boxter.jpg", nil];
    
    
    carModel = tesla;
    carModelImage = teslaImageNames;
    
    imgView.layer.cornerRadius = 50.0;
    imgView.layer.masksToBounds = YES;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    if(component == 0){
        return 50.0;
    }
    else{
        return 25.0;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0){
        return companyName.count;
    }
    else{
        return carModel.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [companyName objectAtIndex:row];
    }
    else{
        return [carModel objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0 && row == 0){
        carModel = tesla;
        carModelImage = teslaImageNames;
    }
    else if(component == 0 && row == 1){
        carModel = lamborghini;
        carModelImage = lamborghiniImageNames;
    }
    else if(component == 0 && row == 2){
        carModel = porsche;
        carModelImage = porscheImageNamses;
    }
    
    [pickerView reloadAllComponents];
    
    imgView.image = [UIImage imageNamed:[carModelImage objectAtIndex:[pickerView selectedRowInComponent:1]]];
}







@end
