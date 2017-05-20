//
//  Vehicle.m
//  FirstProject
//
//  Created by 이성재 on 2017. 5. 14..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
@synthesize seats;
//-(void)setWheels:(int)w{
//    wheels = w;
//}
//-(void)setSeats:(int)s{
//    seats = s;
//}
//-(int)wheels{
//    return wheels;
//}
//-(int)seats{
//    return seats;
//}

-(void)setWheels:(int)w Seats:(int)s{
    wheels = w;
    seats = s;
}


-(void)print{
    NSLog(@"wheels : %i, seats : %i", wheels, seats);
}

@end
