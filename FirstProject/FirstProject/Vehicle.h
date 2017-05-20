//
//  Vehicle.h
//  FirstProject
//
//  Created by 이성재 on 2017. 5. 14..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject{
    //member variable
}

//member method
@property int wheels;
@property int seats;

-(void)setWheels:(int)w Seats:(int)s;
//-(void)drawCircle(int x, int y, int r);
//-(void)drawCircleX:(int)x Y:(int)y R:(int)r;
//-(void)drawCircleXYR:(int)x :(int)y :(int)r;

//-(void)setWheels:(int)w;
//-(void)setSeats:(int)s;
//-(int)wheels;
//-(int)seats;
-(void)print;

@end

