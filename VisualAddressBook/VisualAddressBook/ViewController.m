//
//  ViewController.m
//  VisualAddressBook
//
//  Created by 이성재 on 2017. 5. 21..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController{

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    
    myBook = [[BookManager alloc] init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
