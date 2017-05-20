//
//  main.m
//  NSDictionaryTest
//
//  Created by 이성재 on 2017. 5. 20..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary * dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"최강사", @"이름",
                              @"모름", @"나이", nil];
        NSLog(@"name : %@", [dic objectForKey:@"이름"]);
        NSLog(@"age : %@", [dic objectForKey:@"나이"]);
        
        NSMutableDictionary * mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        
        [mdic setObject:@"한국" forKey:@"사는곳"];
        [mdic setObject:@"약간검정" forKey:@"얼굴색"];
        
        NSLog(@"name : %@", [mdic objectForKey:@"이름"]);
        NSLog(@"age : %@", [mdic objectForKey:@"나이"]);
        NSLog(@"location : %@", [mdic objectForKey:@"사는곳"]);
        NSLog(@"face color : %@", [mdic objectForKey:@"얼굴색"]);
    }
    return 0;
}
