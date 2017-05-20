//
//  main.m
//  FirstProject
//
//  Created by 이성재 on 2017. 5. 14..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

// ( class object, instance object ) = object



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Vehicle *hello = [[Vehicle alloc] init];//create instance object
        //[Receiver Message]
        
        [hello setWheels:4 Seats:2];
        
//        hello.wheels = 4;
//        hello.seats = 2;
//        [hello setWheels:4];
//        [hello setSeats:2];
//        [hello print];
//        NSLog(@"wheels : %i, seats : %i", [hello wheels], [hello seats]);
        if ( [hello wheels] == 4 ){
            NSLog(@"wheels : 4");
        }
        else if( [hello wheels] == 3 ){
            NSLog(@"wheels : 3");
        }
        else{
            NSLog(@"no");
        }
        
        switch (hello.seats) {
            case 2:
            NSLog(@"seats : 2");
            break;
            case 1:
            NSLog(@"seats : 1");
            break;
            default:
            break;
        }
        
        for ( int i = 0; i<hello.wheels; i++ ){
            NSLog(@"wheels : %i", i);
        }
        
        int i = 0;
        while ( i < hello.seats ){
            NSLog(@"seats : %i", i);
            i++;
        }
        
        
//        NSLog(@"wheels : %i, seats : %i", hello.wheels, hello.seats);
    }
    return 0;
}
