//
//  Book.m
//  BookManger
//
//  Created by 이성재 on 2017. 5. 20..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name, genre, author;

-(void)bookPrint{
    NSLog(@"name : %@", name);
    NSLog(@"genre : %@", genre);
    NSLog(@"author : %@", author);
}

@end
