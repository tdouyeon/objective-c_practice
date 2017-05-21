//
//  main.m
//  BookManger
//
//  Created by 이성재 on 2017. 5. 20..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Book
        //BookManager
        
        Book *book1 = [[Book alloc] init];
        book1.name = @"햄릿";
        book1.genre = @"전쟁소설";
        book1.author = @"헤밍웨이";
        
        [book1 bookPrint];
        
        Book *book2 = [[Book alloc] init];
        book2.name = @"누구를 위하여 종을 울리나";
        book2.genre = @"비극";
        book2.author = @"셰익스피어";
        
        [book2 bookPrint];
        
        Book *book3 = [[Book alloc] init];
        book3.name = @"죄와 벌";
        book3.genre = @"사실주의";
        book3.author = @"톨스토이";
        
        [book3 bookPrint];
        
        BookManager *myBook = [[BookManager alloc] init];
        
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
        
        NSString *strTemp = [myBook findBook:@"죄와 벌3"];
        if(strTemp != nil){
            NSLog(@"%@", strTemp);
        }
        else{
            NSLog(@"찾으시는 책이 없네요 ^^;");
        }
        
        NSString *removeResult = [myBook removeBook:@"죄와 벌"];
        if( removeResult != nil ){
            NSLog(@"%@ 책을 지웠습니다.", removeResult);
        }
        else{
            NSLog(@"찾으시는 책이 없네요 ^^;");
        }
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook] );
        
    }
    return 0;
}
