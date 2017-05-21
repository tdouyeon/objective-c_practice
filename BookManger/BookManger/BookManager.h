//
//  BookManager.h
//  BookManger
//
//  Created by 이성재 on 2017. 5. 21..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>

// a <- b <- c <- a 순환참조오류 방지 (circular dependency)
@class Book;

@interface BookManager : NSObject{
    NSMutableArray *bookList;
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;

@end
