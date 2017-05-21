//
//  Book.h
//  BookManger
//
//  Created by 이성재 on 2017. 5. 20..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

-(void)bookPrint;

@end
