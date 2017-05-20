//
//  main.m
//  NSStringTest
//
//  Created by 이성재 on 2017. 5. 17..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"This is NSString";
        NSLog(@"str : %@", str);
        
        //immutable class
        NSString *result;
        result = [str substringFromIndex:6];
        result = [str substringToIndex:3];
        
        result = [[str substringToIndex:10] substringFromIndex:8];
        
        result = [[str substringWithRange:NSMakeRange(8, 2)] lowercaseString];
        
        NSLog(@"result : %@", result);
        
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@"Mutable " atIndex:8];
        
        NSLog(@"mstr : %@", mstr);
    }
    return 0;
}
